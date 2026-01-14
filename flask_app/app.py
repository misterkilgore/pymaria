from flask import Flask, render_template_string
import mariadb

app = Flask(__name__)

def get_db_connection():
    conn = mariadb.connect(
        user="root",
        password="examplepassword",
        host="mariadb",
        port=3306
    )
    return conn

@app.route("/")
def index():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SHOW DATABASES")
    databases = [db[0] for db in cursor]
    cursor.close()
    conn.close()
    return render_template_string("""
        <h1>Databases disponibili:</h1>
        <ul>
        {% for db in databases %}
          <li>{{ db }}</li>
        {% endfor %}
        </ul>
    """, databases=databases)

if __name__ == "__main__":
    app.run(host="0.0.0.0")