from flask import Flask, render_template, request, redirect, url_for, session
import json
import psycopg2

app = Flask(__name__)

app.secret_key = b'_5#y2L"F4Q8z\n\xec]/'


def get_conn():
    connection = psycopg2.connect(
        host="localhost",
        port=5432,
        database="cab",
        user='postgres',
        password='postgres')
    return connection


@app.route("/")
def home():
    conn = get_conn()
    curs = conn.cursor()
    curs.execute('select * from queries;')
    data = curs.fetchall()
    print(data)
    curs.close()
    conn.close()
    return render_template('index.html')
