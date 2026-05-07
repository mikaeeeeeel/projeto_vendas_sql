import pyodbc
import pandas as pd
from flask import Flask, render_template_string

app = Flask(__name__)

# Conexao com banco

conn = pyodbc.connect(
    'DRIVER={SQL Server};'
    'SERVER=localhost;'
    'DATABASE=PortfolioVendas;'
    'Trusted_Connection=yes;'
)

@app.route("/")
def index():
    query = "SELECT Nome, Cidade FROM CLIENTES"
    df = pd.read_sql(query, conn)
    return df.to_html()
if __name__ == "__main__":
    app.run(debug=True)