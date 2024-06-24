import mysql.connector


class Connection:
    """This class provides connection to our database"""

    def __init__(self):
        self.host = "localhost"
        self.db = "users"
        self.user = "root"
        self.password = "Paascode123!"

        # Create a db connection
        self.conn = mysql.connector.connect(
            host=self.host, db=self.db, user=self.user, password=self.password
        )

        # Create cursor
        self.cursor = self.conn.cursor()