import psycopg2

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

def max_len_x(x):
    max_len = 0
    for i in range(len(x)):
        if len(x[i]) > max_len:
            max_len = len(x[i])
    return max_len

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur1 = conn.cursor()
    cur1.execute(query_1)
    name = []
    points = []

    for row in cur1:
        name.append(row[0])
        points.append(row[1])

    max_len_name = max_len_x(name)
    for i in range(len(name)):
        print(name[i], ' ' * (max_len_name - len(name[i])), '| ', points[i])
    print('\n\n')


    cur2 = conn.cursor()
    cur2.execute(query_2)
    country = []
    points = []

    for row in cur2:
        country.append(row[0])
        points.append(row[1])

    max_len_country = max_len_x(country)
    for i in range(len(country)):
        print(country[i], ' ' * (max_len_country - len(country[i])), '| ', points[i])
    print('\n\n')


    cur3 = conn.cursor()
    cur3.execute(query_3)
    country = []
    all_points = []

    for row in cur3:
        country.append(row[0])
        all_points.append(row[1])

    max_len_country = max_len_x(country)
    for i in range(len(country)):
        print(country[i], ' ' * (max_len_country - len(country[i])), '| ', all_points[i])

    print('\n\n')