from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
	return "Go to app.py and start writing a code"

if __name__ == "__main__":
	app.run()
