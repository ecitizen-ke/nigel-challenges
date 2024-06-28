from app import create_app
from flask import Flask 
import os
from dotenv import load_dotenv
load_dotenv()

from app.views.users import user_bp

app = create_app()
app.register_blueprint(user_bp)

if __name__ == "__main__":
    app.run(debug=True)