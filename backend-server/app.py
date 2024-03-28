from flask import Flask, request, jsonify


app = Flask(__name__)

     
@app.errorhandler(Exception)          
def error_handling(e):          
    return str(e)  

@app.route("/", methods=['POST'])
def get_client_ip():
    msg = request.json
    return str(eval(msg["expression"]))
