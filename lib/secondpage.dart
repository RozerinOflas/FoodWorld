import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import carousel_slider package
import 'package:flutter_application_2/malzemeler.dart'; // Adjust import path as per your project

class tarifCesitleriPage extends StatefulWidget {
  @override
  _tarifCesitleriPageState createState() => _tarifCesitleriPageState(); //createState metodu _tarifCesitleriPageState sınıfını çağırarak State nesnesi oluşturuyor.
}

class _tarifCesitleriPageState extends State<tarifCesitleriPage>{
//sliderImages, gridImages, gridLabels gibi listeler, gösterilecek resim dosyaları ve etiketlerini içeriyor.
  List<String> sliderImages = [
    'assets/images/mor_lahana_salatasi.jpg',
    'assets/images/tarhanaCorbasi.jpg',
    'assets/images/pankek.jpg',
    'assets/images/limonlurevani.jpg',
    'assets/images/kori_soslu_tavuk.jpg',
  ];

  List<String> gridImages = [
    'assets/images/meyveler.jpg',
    'assets/images/sebzeler.jpg',
    'assets/images/baklagil.jpg',
    'assets/images/etUurunleri.jpg',
    'assets/images/sutUrunleri.jpg',
    'assets/images/temelGida.jpg',
  ];

  List<String> gridLabels = [
    'Meyve',
    'Sebze',
    'Baklagil',
    'Et ve Et Ürünleri',
    'Süt ve Süt Ürünleri',
    'Temel Gıda',
  ];
  
  //get Image => null;

  @override
  Widget build(BuildContext context) {//build metodu, kullanıcı arayüzünü oluşturur.
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        title: Text('Tarif Filtreleme'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider( //CarouselSlider widget'ı, slayt gösterisi olarak resimleri göstermek için kullanılır.
              options: CarouselOptions(  //options ile slayt gösterisinin özellikleri ayarlanır
                height: 200,  // imagelarin buyuklugu
                autoPlay: true, //resimlerin otomatik hareket etmesi
                enlargeCenterPage: true, // merkezdeki slaytin buyutulup gosterilmesi
                viewportFraction: 1.0, //eresmin krandaki gorunum alanini ayarlar (1.0 değeri, slaytın tamamının görünmesini sağlar.)
              ),
              items: sliderImages.map((image) {  //items ile resimler listelenir.sliderImages listesindeki her bir resim için bir Container oluşturulur ve toList() ile listeye dönüştürül
                return Container(
                  width: MediaQuery.of(context).size.width,//Container'ın genişliği, cihazın genişliğine eşit olacak şekilde ayarlanır.
                  margin: EdgeInsets.symmetric(horizontal: 5.0),//Container'ı yatay yönde 5 birimlik bir kenar boşluğu ile sarmalar.
                  decoration: BoxDecoration(//Container'ın stilini belirler.
                    borderRadius: BorderRadius.circular(8.0),//Kenarları 8 piksel yuvarlatılmış köşelere sahip olacak şekilde ayarlar.
                    image: DecorationImage(//Container'ın arka plan resmi olarak image'ı ayarlar.
                      image: AssetImage(image),
                      fit: BoxFit.cover,//Resmi Container'a sığacak şekilde kaplamak için BoxFit.cover kullanılır.
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            GridView.builder( //Veri listesinden ızgara görünümü oluşturmak için kullanılır.
              shrinkWrap: true, //GridView'in sarmaşık bir görünüm alıp almayacağını belirler. true değeri, GridView'in içeriğine sığacak şekilde boyutlandırılmasını sağlar.
              physics: NeverScrollableScrollPhysics(),//Kaydırma fiziksel davranışını belirler.NeverScrollableScrollPhysics() ile ızgara kaydırılamaz ve bu sayede sabit bir görünüm sağlanır.
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( //GridView'in nasıl düzenleneceğini belirler.
                crossAxisCount: 2, //her satırda iki öğe olacak şekilde düzenlenir.
              ),
              itemCount: gridImages.length, //GridView'de gösterilecek öğe sayısını belirtir. gridImages listesindeki resim sayısı kadar öğe gösterilecektir.
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector( //GestureDetector: Kullanıcı bir resme tıkladığında yapılacak işlemi belirler
                      onTap: () { //onTap: () { }: Resme tıklama işlemi tanımlanır.
                        Navigator.push(
                          context,
                          MaterialPageRoute(//Navigator.push(...) : Yeni bir sayfaya geçiş işlemi yapılır. MaterialPageRoute ile geçilecek sayfa belirtilir (IngredientPage(index)).
                              builder: (context) => IngredientPage(index)),
                        );
                      },
                      child: ClipOval(//Resme oval bir şekil vermek için kullanılır.
                        child: Image.asset(
                          gridImages[index],
                          fit: BoxFit.cover,
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ),
                    SizedBox(height: 8), //Resim ve etiket arasında boşluk ekler.
                    Text(
                      gridLabels[index], //gridLabels listesindeki etiketi alır.
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },  
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(350, 50),
              ),
              child: Text('İleri',style: TextStyle(color: Colors.black),),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
