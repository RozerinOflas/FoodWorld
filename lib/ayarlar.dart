import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();  //createState metodu _SettingsPageState sınıfını çağırarak State nesnesi oluşturuyor.
}
class _SettingsPageState extends State<SettingsPage> { 
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _adressController = TextEditingController(); //TextEditingController'ları tanımlıyoruz. Bu controller'lar, TextField'larda kullanıcı girdilerini yönetmek için kullanılır.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hesap Ayarları'),
        //leading: Container(),// ayarlardakı gerı ikonunu siler
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView( //bununla içeriği kaydırarak görüntüleyebiliriz.
        padding: EdgeInsets.all(16.0),
        child: Column( //Column içinde sıralanmış çocuk widget'lar (children), dikey bir düzen sağlar.
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16.0),
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/profil.jpg'),
              ),
            ),
            SizedBox(height: 18.0),
            Text(
              'Kullanıcı Adı',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextField( //TextField widget'ları, kullanıcı girişi almak için kullanılır. Her biri controller ile kontrol edilir ve decoration ile görünümü özelleştirilir.
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: 'Lütfen kullanıcı adınızı giriniz',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(23)),
                prefixIcon: Icon(Icons.person_2, color: Colors.amber),
              ),
            ),
            SizedBox(height: 18.0),
            Text(
              'Şifre',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Lütfen şifrenizi giriniz',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(23)),
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.amber,
                ),
              ),
            ),
            SizedBox(height: 23.0),
            Text(
              'Telefon Numarası',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: 'Lütfen telefon numaranızı giriniz',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(23)),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.amber,
                ),
              ),
            ),
            SizedBox(height: 18.0),
            Text(
              'Adres',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _adressController,
              decoration: InputDecoration(
                hintText: 'Lütfen adresinizi giriniz',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(23)),
                prefixIcon: Icon(
                  Icons.location_on_sharp,
                  color: Colors.amber,
                ),
              ),
            ),
            SizedBox(height: 21.0),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Güncelle',
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.amber),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  void dispose() { // _usernameController, _passwordController, _phoneController, _adressController gibi TextEditingController'lar dispose edilir. Bu işlem, bu controller'ların tuttuğu bellek ve diğer kaynakları serbest bırakır. bellek yönetiminin önemli bir parçasıdır 
    _usernameController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    _adressController.dispose();
    super.dispose();
  }
}
