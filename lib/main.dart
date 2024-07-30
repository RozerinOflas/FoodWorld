import 'package:flutter/material.dart';
import 'package:flutter_application_2/kategoriler.dart';
import 'package:flutter_application_2/ayarlar.dart';
import 'package:flutter_application_2/tarifArama.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yemek Sepeti',   //uygulamanin adi
      home: MyHomePage(),      //baslangic sayfasi
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;  // alt navigasyon çubuğunda seçili olan öğenin indeksini saklar.

  void _onItemTapped(int index) {      //fonksiyonu, alt navigasyon çubuğundaki bir öğeye tıklandığında _selectedIndex'i günceller.
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    Kategoriler(),
    Tarifarama(),
    ProfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(  //lt navigasyon çubuğunu tanımlar. Her öğe için ikon (icon) ve etiket (label) belirtilir.
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tarif Arama',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 238, 145, 52),
        unselectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(color: Colors.red),
        unselectedLabelStyle: TextStyle(color: Colors.red),
        onTap: _onItemTapped,  //onTap özelliği, bir öğeye tıklandığında _onItemTapped fonksiyonunu çağırarak seçili öğeyi günceller
      ),
    );
  }
}

class ProfilScreen extends StatelessWidget {
  //get Image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
        actions: <Widget>[       // actions ile sağ üst köşede ayarlar ikonu belirlenir.
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {  //onPressed özelliği ile ayarlar ikonuna tıklandığında Navigator.push ile SettingsPage sayfasına geçiş yapılır.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
        ], 
        backgroundColor: Colors.transparent,  //appbarin arka plan rengi
      ),
      body: SingleChildScrollView(  //içerik ekranı aşarsa kaydırma özelliği sağlar.
        child: Container(
          padding: EdgeInsets.all(16.0),  //kenar bosluklari tanimlanir
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 50.0,  //profil resminin buyuklugu
                  backgroundImage: AssetImage('assets/images/profil.jpg'),  //resmin yolu belirtilir
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Ad Soyad', 
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0), //SizedBox widget'ı ile boşluklar eklenir (height özelliği ile yükseklik belirlenir).
              Text(
                'Uğur Biçer',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Text(
                    'Favorilerim    ',   
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,  //kalp ikonu
                  ),
                  Text(
                    ' 7',     
                    style:
                        TextStyle(fontSize: 19.0, fontStyle: FontStyle.italic),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center, // favorilerim yazisi ve kalp ikonunun ortada olmasini saglar
              ),
              SizedBox(height: 10.0),
              GridView.count(
                shrinkWrap: true,  //shrinkWrap, içeriği sarma özelliği sağlar (içeriğin boyutunu sınırlar).
                crossAxisCount: 3,  //ızgaradaki sütun sayısını belirler.
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                children: [
                  'assets/images/kazandibi.jpg',
                  'assets/images/mercimek_corbasi.jpg',
                  'assets/images/kori_soslu_tavuk.jpg',
                  'assets/images/menemen.jpg',
                  'assets/images/sehriye_salatasi.jpg',
                  'assets/images/havuc_tarator.jpg',
                  'assets/images/tarhanaCorbasi.jpg',
                  'assets/images/mor_lahana_salatasi.jpg',
                ].map((imageName) {
                  return GestureDetector(   //GestureDetector ile tıklama özelliği eklenmiş Container içinde gösterilir.
                    onTap: () {
                      // Tıklanan favoriye göre işlem yapabilirsiniz
                    },
                    child: Container(
                      color: Colors.grey[200],
                      child: ClipRRect(                       //ClipRRect, Flutter'da bir widget'in köşelerini veya kenarlarını yuvarlatmak için kullanılan bir widget'tır.
                      //ClipRRect ile kenarları yuvarlatılmış bir kare oluşturulur ve Image.asset ile resim yüklenir.
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset( 
                          imageName,              
                          width: 120.0,
                          height: 120.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}