#Example 2-1. hello.py: A complete Flask application

from flask import Flask
app = Flaske(__name__)

@app.route('/')
def index():
    return '<h1>Hello World!</h1>'