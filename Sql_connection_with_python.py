import mysql.connector
mydb=mysql.connector.connect(
    host='localhost',
    user='root',
    password='Vamsi@2004',
    database='coviddb'
)
print(mydb)

cursor =mydb.cursor()
cursor.execute("select * from worldometer_data")
cursor=cursor.fetchall()
for row in cursor:
    print(row)