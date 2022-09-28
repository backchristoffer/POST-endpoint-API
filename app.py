from flask import Flask, jsonify, request
import os

app = Flask(__name__)
metrics = []

#Create path for pv
pv_path = '/data'
if os.path.exists(pv_path) == True:
    os.mkdir(pv_path)

@app.route('/')
def get_data():
    return jsonify(metrics)

@app.route('/POST', methods=['POST'])
def post_resp():
    metrics.append(request.get_json())
    return '', 200

@app.route('/PVTEST', methods=['GET'])
def pv_test():
    with open(os.path.join('/data','metrics.txt'), "w+") as file1:
        file1.write("This is a pv test!")


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)
