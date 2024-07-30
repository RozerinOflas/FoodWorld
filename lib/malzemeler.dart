import 'package:flutter/material.dart';

class IngredientPage extends StatefulWidget {
  final int imageIndex; //IngredientPage: StatefulWidget sınıfı, imageIndex parametresi alarak oluşturulur. Bu parametre, gösterilecek içeriğin türünü belirlemek için kullanılır.
  IngredientPage(this.imageIndex);
  @override
  _IngredientPageState createState() => _IngredientPageState();
}//IngredientPage'in state sınıfıdır. Burada state yönetimi ve işlevselliği tanımlanır.
class _IngredientPageState extends State<IngredientPage> {
  List<String> ingredientsList = [];//_IngredientPageState sınıfı, IngredientPage için state yönetimini sağlar. Burada ingredientsList ve isCheckedList listeleri tanımlanır.
  List<bool> isCheckedList = [];

  Map<int, String> imageMap = { //imageMap adında bir Map tanımlanır; bu harita, imageIndex değerlerine göre gösterilecek resim dosyalarının yolunu tutar.
    0: 'assets/images/meyveler.jpg',
    1: 'assets/images/sebzeler.jpg',
    2: 'assets/images/baklagil.jpg',
    3: 'assets/images/etUurunleri.jpg',
    4: 'assets/images/sutUrunleri.jpg',
    5: 'assets/images/temelGida.jpg',
  };

  @override
  void initState() {
    super.initState();//initState metodu, state'in başlangıç durumunu ayarlar. 
    ingredientsList = _getIngredientsList(widget.imageIndex);//ingredientsListi widget.imageIndex değerine göre doldurur
    isCheckedList = List.generate(ingredientsList.length, (index) => false);//isCheckedList listesini ingredientsList uzunluğu kadar false değerleriyle doldurur.
  }

  List<String> _getIngredientsList(int index) {//_getIngredientsList fonksiyonu, index parametresine göre farklı içerik listeleri döndürür. Bu liste ingredientsList değişkenine atanır.
    switch (index) {
      case 0:
        return [
          'Elma', 'Armut', 'Portakal', 'Muz', 'Çilek','Üzüm', 'Kiraz', 'Ananas', 'Kivi', 'Avokado',
        ];
      case 1:
        return [
          'Domates', 'Salatalık', 'Biber', 'Patlıcan', 'Kabak','Havuç', 'Marul', 'Pırasa', 'Brokoli', 'Mantar',
        ];
      case 2:
        return [
          'Mercimek', 'Noel Bakla', 'Fasulye', 'Nohut', 'Soya','Bezelye', 'Barbunya', 'Börülce', 'Mısır', 'Lahana',
        ];
      case 3:
        return [
          'Tavuk', 'Kuzu Eti', 'Dana Eti', 'Hindi', 'Sığır Eti','Tavuk Göğsü', 'Balık', 'Karides', 'Somon', 'Kırmızı Et',
        ];
      case 4:
        return [
          'Süt', 'Yoğurt', 'Tereyağı', 'Peynir', 'Kaymak','Krema', 'Parmesan', 'Mozzarella', 'Kaşar Peynir', 'Süzme Peynir',
        ];
      case 5:
        return [
          'Un', 'Şeker', 'Makarna', 'Pirinç', 'Zeytinyağı', 'Tuz', 'Bal', 'Sirke', 'Yumurta', 'Beyaz Un',
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(//Materyal tasarım yapısını sağlar, uygulamanın temel çerçevesini oluşturur.
      appBar: AppBar(
        title: Text(_getTitle(widget.imageIndex)), //Text(_getTitle(widget.imageIndex)): Başlık metni, imageIndex değerine göre dinamik olarak belirlenir.
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,//Sütun içindeki öğelerin yatayda ortalanmasını sağlar.
        children: [
          Container(
            height: 200, 
            width: double.infinity,//Container'ın genişliği, ekrana sığacak kadar geniş olacak şekilde ayarlanır.
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_getImage(widget.imageIndex)),//Gösterilecek resmin yolu, imageIndex değerine göre dinamik olarak belirlenir.
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded( //ListView'i kaplar ve kalan boş alanı doldurur.
            child: ListView.builder(
              itemCount: ingredientsList.length, //Liste öğe sayısı, ingredientsList listesinin uzunluğu kadar olacak şekilde ayarlanır.
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(ingredientsList[index]),
                  trailing: Checkbox(//Liste öğesinin sağ tarafına bir Checkbox ekler.
                    value: isCheckedList[index],//Checkbox'un seçili olup olmadığını belirler, isCheckedList listesinden gelen değerle ayarlanır.
                    onChanged: (value) { //Checkbox'un değeri değiştiğinde yapılacak işlemi belirler.
                      setState(() {
                        isCheckedList[index] = value!;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);//Butona basıldığında mevcut sayfadan çıkış yapmayı sağlar.
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: Size(350, 50),
            ),
            child: Text('İleri', style: TextStyle(color: Colors.black)),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  String _getTitle(int index) {//getTitle fonksiyonu, index değerine göre başlık (title) döndürür.
    switch (index) {
      case 0:
        return 'Meyveler';
      case 1:
        return 'Sebzeler';
      case 2:
        return 'Kuru Baklagiller';
      case 3:
        return 'Et Ürünleri';
      case 4:
        return 'Süt ve Süt Ürünleri';
      case 5:
        return 'Temel Gıda Ürünleri';
      default:
        return 'İçerik';
    }
  }
  String _getImage(int index) {//_getImage fonksiyonu, index değerine göre resim yolunu döndürür. Eğer imageMap içinde index yoksa (null ise), '*' değeri döner.
    return imageMap[index] ?? ''; 
  }
}
