import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Recipe {
  final String category;
  final String title;
  final String imageUrl;
  final String description;
  final String cookingTime;
  final String serving;
  final String calories;
  final String ingredients;
  final double rating;

  Recipe({
    required this.category,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.cookingTime,
    required this.serving,
    required this.calories,
    required this.ingredients,
    required this.rating,
  });
}

class Tarifler extends StatelessWidget {
  final String category; //category özelliği bir kategori adını temsil eder. 
  Tarifler({Key? key, required this.category}) : super(key: key);
  
 // get Image => null;
//Tarifler() bu kategori adını alır.
  void navigateToDetail(BuildContext context, Recipe recipe) { //navigateToDetail() metodu, tarife tıklandığında detay sayfasına geçişi sağlar.
    Navigator.push( //Navigator.push() metodu ile detay sayfasına geçiş yapılır
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(recipe: recipe),
      ),
    );
  }
  List<Recipe> getRecipes() {
    final String menemenImage = 'assets/images/menemen.jpg';
    final String mercimekCorbasiImage = 'assets/images/mercimek_corbasi.jpg';
    final String sehriyeSalatasiImage = 'assets/images/sehriye_salatasi.jpg';
    final String havucTaratorImage = 'assets/images/havuc_tarator.jpg';
    final String koriSosluTavukImage = 'assets/images/kori_soslu_tavuk.jpg';
    final String kazandibiImage = 'assets/images/kazandibi.jpg';
    final String tarhanaCorbasiImage = 'assets/images/tarhanaCorbasi.jpg';
    final String keledosImage = 'assets/images/keledos.jpg';
    final String pankekImage = 'assets/images/pankek.jpg';
    final String revaniImage = 'assets/images/limonlurevani.jpg';
    final String morLahanaSalatasiImage = 'assets/images/mor_lahana_salatasi.jpg';
    final String haydariImage = 'assets/images/haydari.jpg';
    return [
      Recipe(
        category: 'Kahvaltılar',
        title: 'Menemen',
        imageUrl: menemenImage,
        ingredients:
            " MALZEMELER: \n\n - 2 yemek kaşığı sıvı yağ\n - 3 adet yeşil biber (Sap ve çekirdekleri temizledikten sonra, ince doğranmış) \n - 3 orta boy domates\n - 1/2 (yarım) çay kaşığı tuz\n - 3 adet yumurta\n - İsteğe bağlı: kaşar peyniri",
        description:
            'HAZIRLANIŞI: \n\nSıvı yağı ve biberleri tavaya alarak biberlerin rengi dönünceye kadar kavurun. Üzerine kabukları soyulup küçük küçük doğranmış domatesleri ilave edin. Kısık ocakta tavanın kapağını kapatarak domateslerin iyice pişmesini bekleyin. Domatesler çok suyu değil, tavaya yapışıyorsa birazcık kaynar su ekleyebilirsiniz. Genellikle de bu duruma gerek kalmayacaktır. Fotoğraftaki gibi domatesler piştikten sonra yumurtaları kırabilirsiniz. Yumurtaları ister ayrı bir kapta çırpıp ekleyin isterseniz de benim gibi tavaya kırıp tavada karıştırabilirsiniz. Üzerine tuz ve dilediğiniz baharatları ekleyerek yumurtalar pişene kadar bekleyin. Kaşar peyniri eklemek istiyorsanız bu aşamada peynirleri de ilave edebilirsiniz. Menemeni sıcak olarak servis yapın',
        cookingTime: '10 min',
        serving: '2-4',
        calories: '177',
        rating: 2.7,
      ),
      Recipe(
        category: 'Çorbalar',
        title: 'Mercimek Çorbası',
        imageUrl: mercimekCorbasiImage,
        ingredients:
            "MALZEMELER:  \n\n - 2 su bardağı kırmızı mercimek \n - 1 adet soğan \n - 2 yemek kaşığı un \n - 1 adet havuç \n - (Yarım yemek kaşığı biber ya da  domates salçası (rengi kırmızı olsun isterseniz artırabilir ya da hiç kullanmayabilirsiniz) \n  - 1 tatlı kaşığı tuz \n - Yarım çay kaşığı karabiber \n - 1 çay kaşığı kimyon (isteğe bağlı) \n - 2 litre sıcak su \n - 5 yemek kaşığı sıvı yağ ",
        description:
            'HAZIRLANIŞI: \n\nKırmızı mercimek çorbası için sıvı yağı tencereye alınarak yemeklik doğranan soğanlar hafif pembeleşinceye kadar kavrulur. Daha sonra un ilave edilerek kısık ateşte kavurmaya devam edilir. Salça kullanılacak ise salça ilave edilir, kavrulduktan sonra küp küp doğranmış havuç ve iyice yıkanıp suyu süzülen mercimekler ilave edilir. Üzerine su eklenerek karıştırılır ve tencerenin kapağı kapatılır. Çorbamız kaynayana kadar orta ateşte, kaynadıktan sonra mercimekler ve havuçlar yumuşayana kadar ara ara karıştırılarak kısık ateşte pişirilir. Çorba piştikten sonra el blenderı ile güzelce ezilir. Eğer blenderiniz yoksa süzgeçten de geçirebilirsiniz. Karabiber, tuz ve isteğe bağlı olarak kimyon eklenir ve karıştırılır. 5 dakika daha pişirilerek ocaktan alınır. Kıvamı koyu gelirse size, bir miktar su ilave edilerek bir taşım kaynatılır. Bu arada küçük bir tavaya iki yemek kaşığı tereyağı alınır, kızdırılır ve bir tatlı kaşığı kırmızı toz biber eklenerek ocaktan alınır. Mercimek çorbası servis kasesine alındıktan sonra üzerine kırmızı biberli sos gezdirilir ve bir dilim limon ile servis edilir',
        cookingTime: '30 min',
        serving: '6-8',
        calories: '137',
        rating: 4.3,
      ),
      Recipe(
        category: 'Salatalar',
        title: 'Tavuklu Arpa Şehriye Salatası',
        imageUrl: sehriyeSalatasiImage,
        ingredients:
            'MALZEMELER: \n\n - 1,5 su bardağı arpa şehriye \n - Yarım çay bardağı zeytinyağı \n -1 tatlı kaşığı tuz \n -2 su bardağı sıcak su \n -3 adet közlenmiş kırmızı biber \n - Yarım demet dereotu \n - 6 adet kornişon turşu \n - 1 küçük kutu konserve mısır \n - yarım tavuk göğsü \n - 1 adet limon suyu',
        description:
            'HAZIRLANIŞI: \n\nÖncelikle tavaya zeytinyağını alalım, üzerine şehriyeleri ilave ederek renkleri dönünceye kadar karıştırarak kavuralım. Şehriyeleri kavurduktan sonra tuz ve sıcak suyu ilave ederek karıştıralım. Tencerenin kapağını kapatalım ve şehriyeler yumuşayıp suyunu çekinceye kadar orta ateşte pişmeye bırakalım. Ardından ocaktan alarak soğumaya bırakalım. Pişen şehriyelerin üzerine kağıt havlu kapatalım ve demlenmeye bırakalım. Dereotunu ince ince kıyalım. Kornişon turşu ve közlenmiş biberi de küçük küçük doğrayalım. Haşlanmış tavuk göğsünü didikleyelim. Soğuyan arpa şehriyeleri uygun bir karıştırma kabına alalım. Üzerine tavuk göğsü, haşlanmış mısır, kırmızı biber, turşu, dereotu ve limon suyunu ekleyerek güzelce karıştıralım. Tavuklu arpa şehriye salatamız servise hazır',
        cookingTime: '10 min',
        serving: '2-4',
        calories: '260',
        rating: 3.5,
      ),
      Recipe(
        category: 'Mezeler',
        title: 'Havuç Tarator',
        imageUrl: havucTaratorImage,
        ingredients:
            'MALZEMELER:\n \n - 3 adet havuç \n - 3-4 yemek kaşığı sıvı yağ \n - 2 diş sarımsak \n - 4 yemek kaşığı yoğurt \n - Tuz',
        description:
            'HAZIRLANIŞI: \n\n3-4 yemek kaşığı sıvı yağ genişçe bir tavaya alınır. Küçük küçük doğradığımız iki diş sarımsak tavaya eklenerek kokusu çıkana kadar kavrulur. Son olarak rendelenmiş havuçlar ilave edilir. Havuçlar yumuşayıncaya kadar yaklaşık 3-4 dakika kavrularak ocaktan alınır ve soğumaya bırakılır. Ocağı yüksek ateşte açarak havuçları yakmamaya dikkat etmelisiniz. Ayrı bir kasede suyu süzülmüş yoğurt ile tuz eklenerek çırpılır. Soğuyan havuçlar yoğurda ilave edilerek karıştırılır ve servis tabağına alınır. Havuç taratorumuz servise hazır.',
        cookingTime: '15 min',
        serving: '2-4',
        calories: '158',
        rating: 4.0,
      ),
      Recipe(
        category: 'Ana Yemekler',
        title: 'Köri Soslu Kremalı Mantarlı Tavuk',
        imageUrl: koriSosluTavukImage,
        ingredients:
            'MALZEMELER: \n\n -3 parça tavuk göğsü \n - 1 adet soğan\n - 2 yemek kaşığı kadar sıvı yağ \n - 300-400g mantar \n - 1 paket sıvı krema \n - 1 tatlı kaşığı köri \n - Yarım çay kaşığı karabiber \n - 1 çay kaşığı kekik \n - 1 çay kaşığı tuz \n - 1 yemek kaşığı parmesan peyniri (tercihe bağlı)',
        description:
            'HAZIRLANIŞI: \n\nKremalı mantarlı körili tavuk için öncelikle tavuk göğsünü küp küp doğrayalım. Ardından soğanı yemeklik doğrayalım. Daha sonra mantarların kabuklarını soyalım ve hızlıca sudan geçirip ince ince doğrayalım. Eğer mantarı yıkamayı tercih etmiyorsanız silerek de kullanabilirsiniz. Tüm malzemeleri hazırladıktan sonra uygun bir tavaya sıvı yağ alalım. Üzerine doğradığımız soğanları ekleyelim, karıştırarak soğanlar pembeleşene kadar pişirelim. Soğanlar pembeleştiğinde doğradığımız tavuk göğsünü de ekleyerek ocağın altını açalım. Mümkün olduğunca yüksek ateşte hızlı bir şekilde tavuklarımızı soteleyelim. Tavuklar kavrulmaya başladığında mantarları ekleyelim, karıştırarak pişirmeye devam edelim. Tavuk ve mantarlar güzelce kavrulduğunu da sıvı kremayı ilave edelim. Ardından köriyi, karabiberi, kekikiği, tuzu, parmesan peynirini ilave edelim. Peynir yoksa kullanmayabilirsiniz. Birkaç dakika daha tavuklar kremayı çekip kıvam alıncaya kadar kısık ateşte pişirmeye devam edelim. Kremalı mantarlı körili tavuğumuz servise hazır',
        cookingTime: '25 min',
        serving: '3-5',
        calories: '378',
        rating: 5.0,
      ),
      Recipe(
        category: 'Tatlılar',
        title: 'Kazandibi',
        imageUrl: kazandibiImage,
        ingredients:
            'MALZEMELER:\n \n -6 su bardağı süt \n - 2 yemek kaşığı nişasta \n - 1 su bardağı un \n - 1 su bardağı şeker \n - 1 yemek kaşığı tereyağı \n - 1 paket vanilya',
        description:
            'HAZIRLANIŞI: \n\nÖncelikle orta boy bir tencereye bütün malzemeleri alarak karıştırıyoruz. Muhallebi elde ediyoruz. En son tereyağını ve vanilyasını dökerek muhallebimizi 5 dk. kadar pişiriyoruz. Orta boy alüminyum tepsiye bolca tereyağı sürüyoruz ve 3 yemek kaşığı kadar tepsiye şeker döküyoruz. Her yeri eşit olmasına özen gösterin. Sonra pişmiş muhallebiyi tepsiye döküyoruz ve orta ateşte sürekli olarak çevirerek muhallebiyi pişiriyoruz. 25-30 dk. yeterli burada önemli olan tepsiyi sürekli çevirerek kontrollü pişirmek kenar kısımların da pişmesine özen göstermek biraz dibi tutan muhallebinin kokusu biraz çıkar. O zaman hemen ocaktan alıyoruz ve soğumaya bırakıyoruz. Soğuduktan sonra 1-2 saat de buzdolabında bekletiyoruz. Sonra istediğimiz gibi dilimleyip servis yapabilirsiniz',
        cookingTime: '35 min',
        serving: '4-6',
        calories: '201',
        rating: 4.6,
      ),
      Recipe(
        category: 'Çorbalar',
        title: 'Tarhana Çorbası',
        imageUrl: tarhanaCorbasiImage,
        ingredients:
            'MALZEMELER: \n\n -3 yemek kaşığı ev tarhanası \n - 1 yemek kaşığı nane \n - 2 yemek kaşığı sıvı yağ \n - 1 yemek kaşığı salça \n - 6 su bardağı su \n - Kırmızı pul biber \n - Karabiber \n - Tuz',
        description:
            'HAZIRLANIŞI: \n\nTenceremizin içerisine sıvı yağ, nane, salça, baharatlar ve tarhanayı ekleyip biraz karıştırarak kavuruyoruz. Dilerseniz tereyağı da kullanabilirsiniz.( Veya tarhanayı suyu ekledikten sonra ekleyip çırpıcı ile karıştırabilirsiniz. böylelikle topaklanma ihtimali azalır.) Suyu yavaş yavaş ilave ediyoruz ve devamlı karıştırarak pişiriyoruz. Topaklanmaması için tel çırpıcı ile karıştırabilirsiniz. (kaynayana kadar karıştırarak pişirelim.) Kaynadıktan sonra 5 dk daha bekleyip ocaktan alıyoruz, çorbamızı.Afiyet olsun',
        cookingTime: '20 min',
        serving: '4-6',
        calories: '181',
        rating: 3.8,
      ),
      Recipe(
        category: 'Ana Yemekler',
        title: 'Keledoş',
        imageUrl: keledosImage,
        ingredients:
            'MALZEMELER: \n\n 200-250 gr. kuşbaşı dana/kuzu eti \n - 1 su bardağı yeşil mercimek \n -1 su bardağı den (buğday) \n - 1 su bardağı haşlanmış nohut \n - 1 orta boy kuru soğan \n - 2 su bardağı çökelek (bulamazsanız, süzme yoğurt) \n - 3 yemek kaşığı tereyağı sıvı yağ \n - Pazı otu (pazik) \n - 3 diş sarımsak \n - Tuz, karabiber, pul biber',
        description:
            'HAZIRLANIŞI: \n\nYeşil mercimek ile den (buğday) bir tencerede haşlanır. Bu sırada 1 kuru soğan, 2-3 yemek kaşığı tereyağı ile kavrulur. Soğanlar kavrulduktan sonra küçük kuşbaşı doğranmış kırmızı et eklenerek kavrulmaya devam edilir. (Et önceden de haşlanmış olabilir, ancak ben düdüklü tencere kullandığım için önceden haşlamaya gerek kalmıyor. ) 10 dk. eti çevirdikten sonra, yeşil mercimek, buğday, nohut ve ince doğranmış pazı otu (bulamazsanız ıspanak da olabilir) ile tuz, karabiber ve üzerini kapatacak kadar su eklenerek 35-40 dk. düdüklüde pişirilir. Piştikten sonra ocaktan aldığınız yemeğin içine 2 su bardağı çökelek (ancak peynir olanı değil, yoğurt kıvamında olanı kullanılacak, bulamazsanız süzme yoğurt) ile 3 diş sarımsak eklenip iyice karıştırılır. En son olarak, yemeğin üzerine yağda kızdırılmış pul biber gezdirilerek servis edilir. Yemeğin yöresel tarifinde 2 avuç ak pancar ile 2 avuç heliz otu da bulunuyor. Ancak bu otları bölgesinde bile bulmak her zaman mümkün olmayıp, belli zamanlarda dağlardan toplandığı için tarife eklemedim. Çökelek ya da süzme yoğurt yerine de yöresel olarak kurut kullanılıyor. Kurut, yoğurdun süzülerek küçük topaklar halinde kurutulup uzun süre saklandığı hali. Yemeklere ekleneceği zaman bir miktar suda eritilerek kullanılıyor.',
        cookingTime: '40 min',
        serving: '4-6',
        calories: '299',
        rating: 3.3,
      ),
      Recipe(
        category: 'Kahvaltılar',
        title: 'Pankek',
        imageUrl: pankekImage,
        ingredients:
            'MALZEMELER: \n\n 2 adet yumurta \n - 2 yemek kaşığı şeker \n - 1 su bardağı süt \n - 1,5 su bardağı un \n - 1 paket kabartma tozu \n - 1 paket vanilya',
        description:
            'HAZIRLANIŞI: \n\nPankek yapmak için öncelikle yumurtalar ve şekeri uygun bir karıştırma kabına alarak iyice çırpalım. Süt, un, kabartma tozu, vanilya ilave çırpma teli ile çırpalım. Siz dilerseniz mikser ile de çırpabilirsiniz. Kek kıvamından biraz daha koyu olacak şekilde hamur hazırlayalım. Teflon ya da yapışmaz bir tavaya az sıvı yağı dökelim, fırça yardımı ile her tarafına dağıtalım. Sıvı yağı az kullanmak pankek yapmanın püf noktalarındandır. Dilerseniz peçete ile de tavaya dağıtabilirsiniz. 1 büyük kaşık hamur dökülerek hamurun kendi kendine yayılmasını bekleyelim. Üzeri göz göz olmaya başlayan pankeklerimizi spatula yardımı ile ters çevirelim. Diğer taraflarını da pişirelim. Her iki tarafı da pişen pankeklerimizi servis tabağına alalım. Üzerine  pudra şekeri serpilerek zevkinize göre muz, kivi, çilek, çikolata, bal, sürülebilir çikolata, reçel ile servis edebilirsiniz.',
        cookingTime: '15 min',
        serving: '2-4',
        calories: '182 ',
        rating: 4.4,
      ),
      Recipe(
        category: 'Tatlılar',
        title: 'Revani',
        imageUrl: revaniImage,
        ingredients:
            'MALZEMELER: \n \n -KEK İÇİN; \n  \n - 3 yumurta \n - 1 su bardağı şeker \n - 1 su bardağı yoğurt \n - 1 su bardağı irmik \n - 1 su bardağı un \n - 1 paket vanilya \n - 1 paket kabartma tozu \n - 1 çay bardağı sıvı yağ \n \n  ŞERBET İÇİN; \n \n - 3 su bardağı su \n - 3 su bardağı seker \n - Yarım limon suyu',
        description:
            'HAZIRLANIŞI: \n\nİlk olarak şerbeti hazırlayalım. Şeker ve suyu küçük bir tencereye alarak orta ateşte kaynatın. Kaynamaya başladıktan sonra şerbete limon suyu ilave ederek kısık ateşte yaklaşık 10 dakika kadar daha kaynatıp ocağı kapatın. Şerbeti bir kenara alarak soğumaya bırakın. Keki hazırlayalım. Uygun bir karıştırma kabına yumurta ve şekeri alarak bol bol çırpın, karışım beyazlayıp köpük köpük olduğunda diğer malzemeleri de ilave ederek kek hamurunu güzelce çırpın. Hamuru yağlanmış büyük boy borcama dökün. Benim kullandığım borcam 28*28 cm’dir. Önceden 170 derecede ısıttığınız fırında üzeri pembeleşene kadar yaklaşık 35 dakika pişirin. Fırından aldığımız tatlımız sıcakken soğumuş şerbeti üzerine dökün. Tatlının şerbetini çekmesi için en az 2-3 saat dinlenmeye bırakın. Dinlenen tatlımızı dilimleyip, üzerine isteğe göre Hindistan cevizi ya da Antep fıstığı serperek servis edebilirsiniz. Afiyet olsun…',
        cookingTime: '40 min',
        serving: '8-10',
        calories: '348',
        rating: 4.7,
      ),
      Recipe(
        category: 'Salatalar',
        title: 'Mor Lahana Salatası',
        imageUrl: morLahanaSalatasiImage,
        ingredients:
            'MALZEMELER:\n \n- Orta boy yarım mor lahana \n - 1 tatlı kaşığı tuz \n -2 yemek kaşığı sirke \n - 1 tutam dereotu  \n - 1 tutam maydanoz \n - 1 adet limon suyu \n - 1 yemek kaşığı nar ekşisi \n - 3-4 yemek kaşığı zeytinyağı',
        description:
            'HAZIRLANIŞI: \n\nÖncelikle mor lahanayı bıçak yardımı ile ince ince doğrayalım ve uygun bir kap içerisine alalım. Dilerseniz bu aşamada sebze soyacağı da kullanabilirsiniz. Üzerine tuz ve sirkeyi dökerek  2-3 dakika ovarak diriliğini kaybedinceye kadar yumuşatalım. Ardından dereotunu ve maydanozu ince ince kıyalım. Yumuşayan mor lahanamıza doğradığımız maydanoz ve dereotunu ekleyelim. Limon suyu, nar ekşisi ve zeytinyağını ilave ederek karıştıralım. 10 dakikada hazırlayabileceğiniz turşu tadında mor lahana salatamız servise hazır. Deneyecek herkese şimdiden afiyet olsun.',
        cookingTime: '20 min',
        serving: '3-5',
        calories: '190',
        rating: 3.9,
      ),
      Recipe(
        category: 'Mezeler',
        title: 'Haydari',
        imageUrl: haydariImage,
        ingredients:
            'MALZEMELER: \n \n  6 yemek kaşığı süzme yoğurt \n - 1 tutam dereotu \n - 1 yemek kaşığı tereyağı \n - 1 tatlı kaşığı nane \n - 1 çay kaşığı tuz \n - 1 dilim beyaz peynir \n - 1 diş sarımsak',
        description:
            'HAZIRLANIŞI: \n\n İlk olarak tavaya tereyağını alarak kızdıralım. Bu aşamada cağı çok yüksek ateşte açıp yağı yakmamaya dikkat edelim. Daha sonra naneyi ekleyerek 1-2 tur karıştıralım ve ocaktan alalım. Karıştırma kabına süzme yoğurdu alalım. Diğer taraftan beyaz peyniri çatalla ezerek ufalayalım, dereotunu ince ince kıyalım. Süzme yoğurdun üzerine peynir ve dereotunu ilave edelim. Son olarak naneli tereyağı, ezilmiş sarımsak, tuzu ekleyerek karıştıralım. Haydari mezesini servis tabağına alarak üzerini zeytinyağı ve dereotu ile süsleyelim. Haydari servise hazır. Afiyet olsun :)',
        cookingTime: '10 min',
        serving: '2-4',
        calories: '64',
        rating: 3.2,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    List<Recipe> recipes = getRecipes().where((recipe) { //getRecipes() metodunu kullanarak tüm tarifleri alır. where() metodunu kullanarak bir filtreleme işlemi yapılır. 
      return category == 'Günün Önerileri' || recipe.category == category; //Filtreleme şartı category == 'Günün Önerileri' veya recipe.category == category (tarifin kategorisi ile category değişkeninin eşleşmesi) olarak belirlenir. 
    }).toList(); //koşulu sağlayan tarifler toList() metodu ile recipes listesine dönüştürülür.
    return Scaffold(
      appBar: AppBar(
        title: Text(category),//AppBar widget'ı, sayfanın üst kısmında başlık olarak category değerini gösterir. 
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: recipes.map((recipe) { //recipes listesi üzerinde map() metodu kullanılarak her bir tarif için bir Column oluşturulur. Bu Column'un içinde sırasıyla buildCard(context, recipe) ve buildDivider() widget'ları eklenir.
              return Column(
                children: [
                  buildCard(context, recipe),
                  buildDivider(), //buildDivider() metodunun ise iki tarif kartı arasında bir bölüm çizgisi eklediği düşünülebilir.
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, Recipe recipe) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(125), //yemegin yazili oldugu cardin kosesi yuvarlatilmis
      ),
      child: InkWell( //InkWell widget'ı, kartın üzerine tıklanabilir alan oluşturur.
        onTap: () => navigateToDetail(context, recipe), //onTap özelliği ile navigateToDetail fonksiyonu çağrılır ve recipe parametresi ile tarif detay sayfasına geçiş yapılır.
        child: Container(
          height: 240,
          width: double.infinity,
          child: Stack( //Stack widget'ı içinde diğer widget'lar üst üste konumlandırılır.
            children: [
              Positioned.fill( //İçerideki ilk widget, tam boyutu dolduran bir ClipRRect widget'ıdır. 
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    recipe.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -10, // gri alanin altta olmasini sagliyor
                left: 30,
                right: 30,

                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey.withOpacity(0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded( //Expanded widget'ı, alanın tamamını kaplayan Column widget'ına genişler.
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // yemegin adinin sol tarafta olmasini sgalar
                          children: [
                            Text(
                              recipe.title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            buildRatings(recipe.rating),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.amber,
                              ),
                              SizedBox(width: 4),
                              Text(
                                recipe.cookingTime,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.fireplace,
                                color: Colors.amber,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '${recipe.calories} cal',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDivider() {
    return SizedBox(height: 35);
  }

  Widget buildRatings(double rating) {
    int numberOfStars = rating.floor(); //rating değerinin tam kısmını numberOfStars değişkenine atar. Örneğin, rating 3.6 ise numberOfStars 3 olacaktır.
    bool isHalfStar = rating - numberOfStars > 0; //rating değerinin tam kısmından sonra yarım yıldız olup olmadığını kontrol eder. Eğer rating ile numberOfStars arasındaki fark 0'dan büyükse (rating'in ondalık kısmı varsa), isHalfStar true olur.

    List<Widget> stars = []; //stars adında bir liste oluşturulur. numberOfStars kadar tam yıldız (Icons.star) eklenir. Eğer isHalfStar true ise yarım yıldız (Icons.star_half) da stars listesine eklenir.
    for (int i = 0; i < numberOfStars; i++) {
      stars.add(Icon(Icons.star, color: Colors.amber));
    }
    if (isHalfStar) {
      stars.add(Icon(Icons.star_half, color: Colors.amber));
    }
    while (stars.length < 5) { //stars listesi 5 yıldıza tamamlanana kadar boş yıldız (Icons.star_border) eklenir. Böylece her zaman 5 yıldız gösterimi elde edilir.
      stars.add(Icon(Icons.star_border, color: Colors.amber));
    }
    return Row(
      children: [
        ...stars, //...stars ile stars listesindeki yıldızlar eklenir. 
        SizedBox(width: 4), //SizedBox(width: 4) ile yıldızlar ile metin arasında 4 birimlik bir boşluk eklenir
        Text(
          rating.toString(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white, // ana sayfadaki yildizin degeri
          ),
        ),
      ],
    );
  }
}
class DetailPage extends StatelessWidget {
  final Recipe recipe;
  const DetailPage({Key? key, required this.recipe}) : super(key: key);
  
  //get Image => null; //required parametresi ile zorunlu bir parametre olduğu belirtilmiştir.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20), //padding ile içeriğin kenar boşlukları belirlenir.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect( //Resmin kenarlarına yuvarlatma efekti eklemek için ClipRRect kullanılır.
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(recipe.imageUrl),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              width: 550,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                recipe.ingredients, //recipe.ingredients, yemek tarifinin malzemelerini içeren metni gösterir.
                style: TextStyle(fontSize: 16),
                textAlign:
                    TextAlign.center, // yemegin malzemelerinin ortada olmasi
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                recipe.description, //recipe.description, yemek tarifinin açıklama metnini içerir.
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center, // yemegin tarifinin ortada olmasi
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // ikonlarin ortada olmasini saglar
                children: [
                  Column(
                    children: [
                      Icon(Icons.fireplace,
                          color:
                              Colors.amber), //yemegin kalorsini belirten ikon
                      SizedBox(height: 8),
                      Text(
                        recipe.calories, //yemegin kalorisi
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.timer,
                          color: Colors.amber), //yemegin suresini belirten alan
                      SizedBox(height: 8),
                      Text(
                        recipe.cookingTime, // yemegin suresi
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.people,
                          color: Colors.amber), // kisilerin ikonu
                      SizedBox(height: 8),
                      Text(
                        recipe.serving,
                        style: TextStyle(
                          color: Colors.black, // kisileri belirten alan
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
                height:
                    20), //yemege tiklayinca gittigimiz syafada ki kutular arasindaki uzaklik
            buildRatings(recipe.rating),  //buildRatings metodu, yıldızlarla oylamayı ve ortalama puanı göstermek için kullanılır.
          ],
        ),
      ),
    );
  }

  Widget buildRatings(double rating) {  //buildRatings metodu, yıldızlarla görsel olarak oylama değerlendirmesini oluşturur.rating parametresi, yemek tarifinin puanını temsil eder.
    int numberOfStars = rating.floor();
    bool isHalfStar = rating - numberOfStars > 0;

    List<Widget> stars = [];
    for (int i = 0; i < numberOfStars; i++) {
      stars.add(Icon(Icons.star, color: Colors.amber));
    }
    if (isHalfStar) {
      stars.add(Icon(Icons.star_half, color: Colors.amber));
    }
    while (stars.length < 5) {
      stars.add(Icon(Icons.star_border, color: Colors.amber));
    }

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade500),
        borderRadius: BorderRadius.circular(
            10), //yemege tiklayinca gittigimiz syafadaki cizgilerin ovalligi
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...stars,
          SizedBox(width: 8), // yildizlar ile yildizin degeri arasindaki bosluk
          Text(
            rating.toString(),
            style: TextStyle(
              // yemege tiklayinca gittigimiz sayfada yildizin degeri
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
