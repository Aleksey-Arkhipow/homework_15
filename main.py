from flask import Flask, jsonify
from utils import get_data

app = Flask(__name__)


@app.route("/<itemid>")
def show_animals_data(itemid):
    data = get_data(itemid)
    return jsonify(data)


app.run()
