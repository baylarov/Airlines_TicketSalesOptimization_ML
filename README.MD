Açıklama:
******************************

1.AWS Ubuntu Server`a bağlanarak tüm dosyaları aktarmamız lazım, bunun için ilk önce Putty ile server`a bağlanarak Ubuntu`da yeni klasör oluşturmamız lazım (opsiyonel):
mkdir airlines_data
2.Local`de airline_data isimli klasörde bulunan dosyaları Ubuntu`da bulunan airlines_data klasörüne aktarıyoruz
3.Sırasıyla aşağıdaki komutları çalıştırarak öncelikle tablo oluştururuz, sonrasında ise tablolara ilgili verileri dahil ederiz:
psql -f create_tables.sql
--yukarıdaki script çalıştırıldığında veritabanı ve akabinde tablolar oluşur.

psql -f insert_data.sql
--yukarıdaki komut çalıştırıldığında veriler ilgili tablolara aktarılmış olacak, veri sayısı biraz büyük olduğu için zaman alabilir
4.Bir sonraki adımda tablolar partitionlayarak tek bir tabloda tutacağız.
