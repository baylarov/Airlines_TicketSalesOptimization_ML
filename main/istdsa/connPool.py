import psycopg2 as ps
from psycopg2 import pool
'''
    Author      :   Anar Baylarov
    Created at  :   2020-13-Apr
    Description :   Postgres Connection Pool (for ISTDSA Github repo)
'''
class DbConnection:

    connectPool=None

    @staticmethod
    def init(**kwargs):
        DbConnection.connectPool=pool.SimpleConnectionPool(1,20,**kwargs)
        if DbConnection.connectPool:
            print('Postgres veritabanı bağlantısı başarılı.')

    @staticmethod
    def getConnection():
        return DbConnection.connectPool.getconn()

    @staticmethod
    def putConnection(connect):
        DbConnection.connectPool.putconn(connect)

    @staticmethod
    def closeConnection():
        DbConnection.connectPool.closeall()

    def __repr__(self):
        print("İstanbul Data Science Academy Bootcamp'de oluşturulan Postgres Bağlantı havuzu.Maksimum 20 bağlantı olarak ayarlanmış.")

class ConnectionCursor:
    def __init__(self):
        self.conn = None
        self.cursor = None

    def __enter__(self):
        self.conn = DbConnection.getConnection()
        self.cursor = self.conn.cursor()
        return self.cursor

    def __exit__(self, exception_type, exception_value, exception_traceback):
        if exception_value:
            self.conn.rollback()
        else:
            self.cursor.close()
            self.conn.commit()
        DbConnection.putConnection(self.conn)