from flask import Flask
import os


def create_app():
    app = Flask(__name__)
    
    return app