import time
import json

from flask import Flask
app = Flask(__name__)

@app.route("/v1", strict_slashes=False)
def hello():
    return "Tamvera"

@app.route("/v1/time", strict_slashes=False)
def v1_time():
    return json.dumps({
        'time': time.ctime() + " UTC"
    })
