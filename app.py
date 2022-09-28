from flask import Flask, jsonify, request
import os

app = Flask(__name__)
metrics = []

@app.route('/')
def get_data():
    return jsonify(metrics)

@app.route('/POST', methods=['POST'])
def post_resp():
    metrics.append(request.get_json())
    with open(os.path.join('/data','metrics.json'), "w") as file1:
      file1.write(metrics)
    return '', 200

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)
