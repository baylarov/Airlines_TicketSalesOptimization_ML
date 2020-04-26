Açıklama:
************************
Postgres bağlantı havuzu minimum ve maksimum bağlantı sayısı sırasıyla 1 ve 20 olarak ayarlanmış.

Bu havuzun oluşturulma neden bağlantıları ayrılıkta set etmek yerine havuzdan alınmasını sağlamak,böylece sunucu üzerinde ek masraf oluşturmayı engelliyoruz.

Oluşturulan cursorlar için manuel kapama veya commit işlemleri yapılmasına gerek kalmayacak şekilde set edildi.