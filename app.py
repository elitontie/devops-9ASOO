from flask import Flask
from flask_wtf.csrf import CSRFProtect

import os

app = Flask(__name__)

csrf = CSRFProtect(app)

@app.route("/")
def pagina_inicial():
    return "Laboratório Pipeline DevOps - Eliton"

port = os.environ.get("PORT")
if __name__ == '__main__':
    app.run(port, "0.0.0.0")
