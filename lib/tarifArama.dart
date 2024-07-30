import 'package:flutter/material.dart';
import 'package:flutter_application_2/secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarif Filtreleme',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,  //visualDensity özelliği, Flutter uygulamalarının farklı platformlarda (iOS, Android gibi) piksel yoğunluklarına uyum sağlamasını sağlayan bir özelliktir.
      ),
      home: Tarifarama(),  //home özelliği, başlangıç sayfasını (Tarifarama widget'ını) belirtir.
    );
  }
}
class Tarifarama extends StatefulWidget {
  @override
  _TarifaramaState createState() => _TarifaramaState();  //createState metodu, Tarifarama sınıfının state yönetimini sağlayan _TarifaramaState sınıfını oluşturur.
}
class _TarifaramaState extends State<Tarifarama> {
  double _sliderValue1 = 20; //_sliderValue1 ve _sliderValue2, kaydırma çubuklarının başlangıç değerlerini tutar.
  double _sliderValue2 = 500;
  Map<String, bool> _selections = { //selections, kategorilerin seçili durumlarını tutan bir Map nesnesidir.
    'option 1': false,
    'option 2': false,
    'option 3': false,
    'option 4': false,
    'option 5': false,
    'option 6': false,
  };
  
  //get Image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarif Filtreleme'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(  //Image.asset, yerel bir dosyadan görsel yükler.
              'assets/images/tum_yemekler.jpg',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(      //Padding, içerdiği widget'ın etrafına dolgu ekler.
              padding: const EdgeInsets.all(3.0), //EdgeInsets.all(3.0), her yönde 3.0 birim dolgu ekler.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      'Kategoriler:',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Wrap(  //Wrap, sıralı widget'ları satır içi olarak düzenler.
                    spacing: 5.0,  //kategori butonlari arasindaki bosluk
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _selections['option 1'] ?? false
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ), //_selections['option 1'] ?? false ifadesi, _selections map'indeki 'option 1' anahtarının değerini kontrol eder. Eğer değeri null veya false ise Colors.grey.shade400 (açık gri) rengi kullanılır, aksi takdirde Colors.orange (turuncu) rengi kullanılır.
                        onPressed: () { //onPressed, düğmeye basıldığında çalışacak olan fonksiyonu belirtir.
                          setState(() {  //setState, düğmenin durumunu güncellemek için kullanılır. Bu durumda, 'option 1' anahtarının değeri tersine çevrilir.
                            _selections['option 1'] = !_selections['option 1']!;
                          });
                        },
                        icon: Icon(Icons.egg_alt_outlined, color: Colors.black),//iconAlignment: IconAlignment.end,  // ikonu metnin sagt tarafina yerlestirir
                        label: Text(
                          'Kahvaltı',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _selections['option 2'] ?? false
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setState(() {
                            _selections['option 2'] = !_selections['option 2']!;
                          });
                        },
                        icon: Icon(Icons.soup_kitchen, color: Colors.black),
                        label: Text(
                          'Çorba',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _selections['option 3'] ?? false
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setState(() {
                            _selections['option 3'] = !_selections['option 3']!;
                          });
                        },
                        icon: Icon(Icons.eco, color: Colors.black),
                        label: Text(
                          'Salata',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _selections['option 4'] ?? false
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setState(() {
                            _selections['option 4'] = !_selections['option 4']!;
                          });
                        },
                        icon: Icon(Icons.restaurant, color: Colors.black),
                        label: Text(
                          'Meze',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _selections['option 5'] ?? false
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setState(() {
                            _selections['option 5'] = !_selections['option 5']!;
                          });
                        },
                        icon: Icon(Icons.local_pizza, color: Colors.black),
                        label: Text(
                          'Ana Yemek',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _selections['option 6'] ?? false
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setState(() {
                            _selections['option 6'] = !_selections['option 6']!;
                          });
                        },
                        icon: Icon(Icons.cake, color: Colors.black),
                        label: Text(
                          'Tatlı',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Pişirme Süresi:',
                    style: TextStyle(fontSize: 20), 
                  ),
                  Slider(
                    value: _sliderValue1,  //sliderin acildigindaki mevcut degeri
                    min: 0,  //minimum degeri
                    max: 60,  //maksimum degeri
                    divisions: 6, //bolunme sayisi
                    activeColor: Colors.orange,
                    label: _sliderValue1.toInt().toString(),//_sliderValue1.toInt().toString(), slider'ın üzerinde gösterilen etiketi belirler. Burada _sliderValue1 değeri tam sayıya dönüştürülür ve string olarak gösterilir.
                    onChanged: (value) {
                      setState(() {
                        _sliderValue1 = value; //setState(() { _sliderValue1 = value; });, slider'ın değeri değiştiğinde _sliderValue1 değişkeni güncellenir ve arayüz yeniden çizilir.
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Kalori Değeri:',
                    style: TextStyle(fontSize: 20),
                  ),
                  Slider(
                    value: _sliderValue2,
                    min: 0,
                    max: 1000,
                    divisions: 20,
                    activeColor: Colors.red,
                    label: _sliderValue2.toInt().toString(),
                    onChanged: (value) {
                      setState(() {
                        _sliderValue2 = value;
                      });
                    },
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                      
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => tarifCesitleriPage()),
                        ); //Navigator.push(...), tarifCesitleriPage adlı sayfaya geçiş yapar. MaterialPageRoute ile sayfa geçişini yapılandırır ve builder fonksiyonu ile tarifCesitleriPage sayfasını oluşturur.
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(350, 50),
                      ),
                      child: Text(
                        'İleri',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
