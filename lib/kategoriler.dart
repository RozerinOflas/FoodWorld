import 'package:flutter/material.dart';
//import 'package:flutter_application_2/tarifArama.dart';
import 'package:flutter_application_2/tarifler.dart';

class Kategoriler extends StatelessWidget {
  const Kategoriler({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Yemek Tarifleri'),
          centerTitle: true,
        ),
        body: Column(  //Burada Column widget'ı kullanılarak dikey bir düzen oluşturulur.
          children: [
            SingleChildScrollView(  //SingleChildScrollView ve Row kullanılarak yatayda kaydırılabilir buton grubu oluşturulur
              scrollDirection: Axis.horizontal,  
              child: Row(
                children: [        
                  buildButton(context, 'Kahvaltılar', Icons.egg_alt_outlined,   //Tarif_Listesi widget'ı ile ilişkilendirilir.
                      const Tarif_Listesi('Kahvaltılar')),
                  const SizedBox(width: 10), // butonlar arasindaki uzaklik
                  buildButton(context, 'Çorbalar', Icons.soup_kitchen,
                      const Tarif_Listesi('Çorbalar')),
                  const SizedBox(width: 10),
                  buildButton(context, 'Salatalar', Icons.eco,
                      const Tarif_Listesi('Salatalar')),
                  const SizedBox(width: 10),
                  buildButton(context, 'Mezeler', Icons.restaurant,
                      const Tarif_Listesi('Mezeler')),
                  const SizedBox(width: 10),
                  buildButton(context, 'Ana Yemekler', Icons.local_pizza,
                      const Tarif_Listesi('Ana Yemekler')),
                  const SizedBox(width: 10),
                  buildButton(context, 'Tatlılar', Icons.cake,
                      const Tarif_Listesi('Tatlılar')),
                ],
              ),
            ),
            Expanded(
              child: const Tarif_Listesi('Günün Önerileri'),
            ),
          ],
        ));
  }
  Widget buildButton(    //Widget'in build metodu içinde bulunduğu bağlamı temsil eder. Bu, navigator'a erişim sağlamak için gereklidir.
      BuildContext context, String text, IconData icon, Widget page) {  //Widget page: Butona tıklandığında açılacak sayfanın widget'ı.
    return ElevatedButton(
      onPressed: () {  //onPressed özelliği, butona tıklandığında çağrılacak fonksiyonu belirtir. Burada Navigator.push kullanılarak context üzerinden yeni bir sayfa (page parametresi ile belirtilen) açılır.
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      style: ElevatedButton.styleFrom( 
        backgroundColor: const Color.fromARGB(
            255, 206, 205, 205),
             //shape: RoundedRectangleBorder(
               // borderRadius: BorderRadius.zero, // Köşeleri sıfır yaparak kare şekil oluşturur
              //), //kategori butonlarinin rengi
        padding: const EdgeInsets.symmetric(
            horizontal: 15, //kategori butonun genisligi
            vertical: 20), // butonlarin yukseklik  degerleri
      ),
      child: Column(
        //butonlardaki yazinin iconun altinda olmasini saglar
        //mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.black,  //kategori ikonun rengi
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black, //kategori yazinin rengi
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
class Tarif_Listesi extends StatelessWidget {
  final String category;  //category adında bir final String alanı vardır, burada gösterilecek tarif kategorisinin adı tutulur.
  const Tarif_Listesi(this.category, {super.key});
  @override
  Widget build(BuildContext context) {  //build metodu, Tarifler widget'ını döndürür ve bu widget'a category parametresi ile kategori adını iletir.
    return Tarifler(category: category);
  }  //Bu yapı, Kategoriler sınıfından başlayarak kullanıcıların kategorilere tıklaması durumunda ilgili tarif listesini gösteren bir uygulama düzeni oluşturur. HomePage içindeki butonlar kullanıcı etkileşimlerini (onPressed) ve gezintiyi (Navigator.push) yönetir. Tarif_Listesi sınıfı ise belirli bir kategoriye ait tarif listesini oluşturmak için Tarifler widget'ını kullanır.
}
