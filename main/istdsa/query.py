from istdsa import connPool as cp
import base64

'''
    paketimizde bulunan text dosyasından encrypted olunan host bilgisi okundu,
    ve base64 ile decrypt olunarak değişkene atandı.
    Gizlilik açısından enrypted olunan bilgiyi değiştirdim.
    Kendi gizli bilginizin şifrelenmiş formatını görmek için aşağıdaki kodu açarak deneyebilir ve host.txt isimli dosyaya ekleyebilirsiniz.
'''
# print(base64.b64encode("deneme".encode("utf-8")))

# with open('host.txt','r') as p:
#     host_enc=p.readline()

# host=base64.b64decode(host_enc).decode("utf-8")
host='18.191.190.62'
connection_args = {
    'host': host,
    'dbname': 'airlines',
    'user': 'ubuntu',
    'port': 5432
}

conn=cp.DbConnection.init(**connection_args)

# try:
#     with cp.ConnectionCursor() as cursor:
#         cursor.execute('select * from final_airlines_data limit 10;')
#         print(cursor.fetchall())
# except(Exception, DatabaseError) as hata:
#     print('Veritabanı bağlantı hatası:\n ERROR: {}'.format(hata))
class Query:
    query=None
    def ConnCursor(self):
        try:
            with cp.ConnectionCursor() as cursor:
                cursor.execute(query)
                print(cursor.fetchall())
        except(Exception, DatabaseError) as hata:
            print('Veritabanı bağlantı hatası:\n ERROR: {}'.format(hata))
