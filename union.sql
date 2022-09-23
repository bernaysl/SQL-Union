/*UNION operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçları tek bir sonuç kümesi haline getiririz.
*/

(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
UNION ALL
(
SELECT * FROM book
ORDER BY title 
LIMIT 5
);


/*DIKKAT ETMEMIZ GEREK ILK NOKTA: ikisininde sütun sayilari ayni olmali*/
/*DİKKAT ETMEMİZ GEREKEN IKINCI NOKTA: iki tabloda da istedigimiz veriler sırasıla aynı veri tipinde olmali.*/
/*ilk select'ten sonra gelen id, ve ikinci select'ten sonra gelen id'nin veri yapisi integer*/
/*ayni sekilde email ve title varchar veri tipinde oldugu icin hata almadik */
/*ilkinde email ikincisinde page_number isteseydik hata alirdik*/
(
SELECT id,email FROM author
)
UNION
(
SELECT id, title FROM book
);
/*cift olan sonuclari gormek istersek UNION ALL kullaniriz boylelikle tekrar eden verileri de goruruz*/
/*ornegin hem sayfa sayisi ilk beste hem de alfabetik sirada ilk beste olabilir UNION dersek bir kez goruruz, UNION ALL dersek ayni veriyi bize iki kere gosterir*/
