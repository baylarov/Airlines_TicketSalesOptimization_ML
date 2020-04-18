Açıklama:
******************************

1.AWS Ubuntu Servera bağlanarak tüm dosyaları aktarmamız lazım, bunun için ilk önce Putty ile sunucuya bağlanarak Ubuntuda yeni klasör oluşturmamız lazım (opsiyonel):

	mkdir airlines_data

2.Localde airline_data isimli klasörde bulunan dosyaları Ubuntuda bulunan airlines_data klasörüne aktarıyoruz

3.Sırasıyla aşağıdaki komutları çalıştırarak öncelikle tablo oluştururuz, sonrasında ise tablolara ilgili verileri dahil ederiz:

	psql -f create_tables.sql

--yukarıdaki script çalıştırıldığında veritabanı ve akabinde tablolar oluşur.

	psql -f insert_data.sql

--yukarıdaki komut çalıştırıldığında veriler ilgili tablolara aktarılmış olacak, veri sayısı biraz büyük olduğu için zaman alabilir

4.Bir sonraki adımda tablolar partitionlayarak tek bir tabloda tutacağız.

5.2016 ve 2018 yılları aralığındaki verisetlerinin biyutu 50 mbdan büyük olduğu için GitHub repoya ekleyemedim, alternatif olarak zip dosyada yüklendi.Unzip ederek bu verisetlerine ulaşmak mümkün.
