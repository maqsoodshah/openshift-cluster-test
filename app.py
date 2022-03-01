from flask import Flask
import time

app = Flask(__name__)
  
@app.route("/")
def index():
    time.sleep(2)
    return "Hello Everyone!I'm MaQs. This is Openshift cluster deployment test.\n Contact: mr.maqsood.shah@gmail.com"
  
if __name__ == '__main__':
   app.run(debug=True, host='0.0.0.0')


