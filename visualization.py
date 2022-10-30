import psycopg2
import matplotlib.pyplot as plt


username = 'sholop01_lab2'
password = '21132113'
database = 'sholop01_lab2_DB'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT TRIM(artist_name), artist_points 
FROM artist
ORDER BY artist_points DESC
'''
query_2 = '''
SELECT TRIM(artist_country), COUNT(artist_country) 
FROM artist
GROUP BY artist_country
ORDER BY COUNT(artist_country) DESC
'''
query_3 = '''
SELECT TRIM(artist_country), SUM(artist_points)
FROM artist
GROUP BY artist_country
ORDER BY SUM(artist_points) DESC
'''


conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur1 = conn.cursor()
    cur1.execute(query_1)
    name = []
    points = []

    for row in cur1:
        name.append(row[0])
        points.append(row[1])

    plt.bar(name, points)
    plt.title('Кількість балів зароблених співаком', size=20)
    plt.ylabel('Бали', size=15)
    plt.xticks(rotation=10)
    plt.show()


    cur2 = conn.cursor()
    cur2.execute(query_2)
    country = []
    points = []

    for row in cur2:
        country.append(row[0])
        points.append(row[1])

    x, y = plt.subplots()
    plt.title('Кількість представників однієї країни', size=20)
    y.pie(points, labels=country, autopct='%1.1f%%')
    plt.show()


    cur3 = conn.cursor()
    cur3.execute(query_3)
    country = []
    all_points = []

    for row in cur3:
        country.append(row[0])
        all_points.append(row[1])

    plt.plot(country, all_points)
    plt.plot(all_points, marker='o')
    plt.title('Сумарна кількість балів по країнам', size=20)
    plt.ylabel('Всі бали', size=15)
    plt.xticks(rotation=10)
    plt.show()

