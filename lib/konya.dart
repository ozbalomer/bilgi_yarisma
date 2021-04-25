import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Konya extends StatefulWidget {
  @override
  _KonyaState createState() => _KonyaState();
}

class _KonyaState extends State<Konya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Konya'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text("Konya, Türkiye'nin yüz ölçümü bakımından en büyük ili ve en kalabalık yedinci şehridir. 31 ilçeden oluşur. Konya İl Nüfusu: 2.250.020'dir. (2020) [1] Trafik plaka numarası 42'dir.[3] 1875'te kurulan Konya Belediyesi, 1987'de çıkarılan 3399 sayılı yasa gereğince 'büyükşehir' statüsüne kavuşmuş olup 1989'dan beri belediye hizmetleri bu statüye göre yürütülmektedir. 2014'te 6360 sayılı kanun ile büyükşehir belediyesinin sınırları il mülki sınırları oldu."
                      "Ekonomik açıdan Türkiye'nin gelişmiş kentlerinden biri olan Konya doğal ve tarihsel zenginlikleriyle de önem taşır. Dünyanın en eski yerleşimlerinden biri olan Çatalhöyük, 2012 yılında UNESCO Dünya Miras Listesi'ne alınmıştır. Şehir Anadolu Selçukluları’nın ve Karamanoğulları’nın başkentliğini yapmıştır. Türkiye'nin en önemli sanayi kentlerinden birisidir. Anadolu Kaplanları'ndandır. Şehrin futbol takımı Konyaspor'dur. Yöresel yemekleri Etliekmek, Bamya Çorbası, Mevlana böreği, Yağ Somunu, Tirit, Konya Pilavı, Sac arası ve Fırın kebabı'dır. Konya’nın simgeleri Mevlana Müzesi (Kubbe-i Hadrâ), çift başlı kartal'dır. "
                      "Adlandırma: İvriz'deki kaya kabartmaları İle adını veren Konya şehrinin isminin Kutsal Tasvir anlamındaki 'İkon' sözcüğüne bağlı olduğu iddia edilir. Mitolojide bu konuda değişik rivayetler bulunmaktadır. Bu hikâyelerden birinde anlatıldığı üzere, kente dadanan ejderhayı öldüren kişiye şükran ifadesi olarak bir anıt yapılır ve üzerine de olayı anlatan bir resim çizilir. Bu anıta verilen isim, İkonion dur. İkonion adı, zamanla İcconium'a dönüşür. Konya ismi diğer bir efsaneye göre şöyle ortaya çıkmıştır; doğudan gelen iki veli, rüzgâr hızıyla uçar gibi Anadolu içlerinde ilerlemektedir. Uzun zamandan beri epeyce yol katetmişlerdir. Yemyeşil ovaları, şırıl şırıl pınarları, berrak akan ırmakları bulunan bir yere gelince istirahat etmek isterler. Biri diğerine 'Konalım mı' (''Konaklayalım mı'' anlamında) diye sorar. Diğer vel-i zat bu teklifi beklemektedir sanki; 'Ne duruyorsun kon, ya!' der. Böylece burada kurulan yeni il 'Konya' adıyla tanınır, 'Konya' adıyla bilinir. "
                      "Roma döneminde İmparator adlarıyla değişen, Claudiconium, Colonia Selie, Augusta İconium gibi yeni adlar alır. Bizans kaynaklarında Tokonion olarak geçen şehre ve bölgeye verilen diğer isimler şöyledir: Ycconium, Conium, Stancona, Conia, Cogne, Cogna, Konien, Konia... Araplar kentin ismini Kuniya olarak değiştirmişlerdir, Selçuklu ve Osmanlı döneminde bu ad Konya'ya dönüşmüştür. Günümüzde de kent hala Konya adını taşımaktadır."
                      " TARİHÇE: Tarih öncesi dönem Konya, Türkiye'deki en eski yerleşim birimlerinden biridir. Konya'da yerleşimin Prehistorik (Tarih öncesi) çağdan başladığı görülmektedir. Konya'nın merkezinde yer alan ve aynı zamanda bir höyük olan, Anadolu Selçuklu sultanı II. Alaeddin Keykubad'a nispetle Alâeddin Tepesi adı verilen suni tepe ve çevresinde yapılan araştırmalar sonucu, prehistorik çağ içinde gerek Neolitik (Cilalı Taş Devri) ve Kalkolitik ve gerekse Erken Bronz Çağ'larına ait kültürel bulgulara rastlanmıştır. Yine prehistorik çağa ait höyüklerden, merkeze 15 km mesafede yer alan ve Konya'nın bugünkü merkez Harmancık mahallesinde yer alan Karahöyük ve Konya Ovası üzerinde, bulunmuş en eski ve en gelişmiş Neolitik devir yerleşim merkezi olan Çatalhöyük bulunmaktadır."
                      "Roma dönemi: Anadolu ve Suriye topraklarında büyük bir imparatorluk kuran Hititler Konya'ya da hakim olmuşlardır. Hititler'den sonra Friglerin egemenliğine giren Konya (Kavania) daha sonra Lidyalılar, Persler ve Büyük İskender'in istilalarına uğramıştır. Sonraları Anadolu'da Roma hakimiyeti sağlanınca Konya İconium olarak varlığını korumuştur. Önemini Roma ve Bizans dönemleri boyunca korumuş olan şehir, Hıristiyanlığın ilk yıllarında dini bir merkez hüviyeti de kazanmıştır. Aziz Paul Anadoludaki dinî seyahatleri sırasında Konya'ya da uğramıştır."
                      " Selçuklu dönemi: İslamiyetin doğuşuyla beraber Doğu Roma İmparatorluğu aleyhine büyüyen İslam Devleti, İstanbul'u hedef alan harekâtları sırasında Konya üzerine de akınlar düzenlemişlerdir. Anadolu'da ve Konya çevresinde ilk İslami oluşumlar bu devirde ortaya çıkmıştır. 1071 senesinde Malazgirt Ovası'nda yapılan Malazgirt Savaşı'ndan önce Anadolu üzerine keşif harekâtları düzenleyen Türkler ve Anadolu'yu tanıyan Büyük Selçuklular, bu savaş sonucu Anadolu'nun büyük bir kısmı ile beraber Konya'yı da, ele geçirmişler ve bölgedeki uzun Bizans hakimiyetine son vermişlerdir. Süleyman Şah 1076 yılında Konya'yı Anadolu Selçukluları'nın başkenti yapmış, bilahare başkent 1080 yılında İznik'e nakledilmiştir. İlk haçlı seferi sırasında İznik şehri tekrar Bizans'ın eline geçmiş, sultan I. Kılıçarslan da 1097 tarihinde başşehri tekrar Konya'ya taşımıştır. Bu tarihten 1277 yılına kadar Konya aralıksız Anadolu Selçuklu Devleti'nin başkenti olmuştur. I. Alaeddin Keykubad (1220-1237) devrinde şehrin etrafına muhkem bir sur inşa edilmiştir ve Konya Anadolu'nun en büyük şehri olmuştur.[4] Selçuklular devrinde şehirde cuma namazı kılınan yedi büyük cami vardı. Toplam şehir nüfusu 45.000-50.000 arasında tahmin ediliyor.Tarihi Katalan Atlası'na göre Karamanoğulları Beyliği'nin bayrağı."
                      " Karamanoğulları dönemi: Karamanoğullarının kökeni Azerbaycan'dan Sivas'a göç eden Hoca Saadettin'in oğlu Nur-i Sufi'ye dayanmaktadır. Buradan Torosların eteğinde olan Larende kasabasına gelip yerleşmişlerdir. Karamanoğulları Oğuzların Avşar boyundandırlar. Nur-i Sufi'nin oğlu Kerimeddin Karaman Bey 13. yüzyılda buradan başlamak üzere Kilikya bölgesinin büyük bir kısmında güç sahibi olmuş, bunun üzerine Anadolu Selçuklu Devleti sultanı I. Alaeddin Keykubad tarafından bölgenin beyi olarak atanmıştır. Karamanoğlu Mehmet Bey Konya'yı 1277 yılında beyliğine katmıştır. Selçuklu yıkılışından sonra Konya şehri Karamanoğulları topraklarına katılmış ve beyliğinin başkenti olmuştur. Tam 16 kez Osmanoğulları ve Karamanoğulları arasında el değiştirmiştir. "
                      "Osmanlı dönemi: Şehir 1467 senesinde kalıcı Osmanlı egemenliğine geçmiştir. Sultan II. Mehmed Konya'yı zaptederek Karamanoğlu hakimiyetine son vermiştir. Osmanlı devrinde Konya önce Karaman Eyaletinin sonra da Konya Vilayetinin merkezi olmuştur. Osmanlı Rus Savaşı ve Balkan Harbi sonunda zorunlu göçe zorlanmış yüz binlerce müslüman[5] Arnavut, Çerkes, Boşnak kökenli Balkan ve Kafkas muhaciri tarıma elverişli olması sebebiyle Konya ve ilçelerine iskan edilmişlerdir. "
                      "Kurtuluş Savaşı dönemi: Millî mücadelenin başlamasıyla Konya bu kutsal mücadelenin içinde yer almış, ancak istenmeyen ve Konya halkınca pek tasvip görmeyen bazı olayların gelişmesi, bir takım yanlış anlamalara, gerçekle pek ilgisi olmayan yorumlara yol açmıştır. Müdafaa-i Hukuk Cemiyeti, Vali’nin Artin Cemal’in yanı sıra Konya’daki Amerikalı Miss Kouchman, İngiliz Rahip Rew Frew, Dr. İpokrat, Kirkor Şişmanyan, Rodoslu Nikola Samarcidis ve Kıbrıslı Kemal Subhuezel gibi ajanların, azınlık temsilcilerinin tabi Damat Ferit ve Zeynel Abidin’in her türlü engelleme, çabalarına rağmen kurulmuştur. Tabii Konya Müdafaa-i Hukuk Cemiyeti’nin Kadınlar Şubesinin kurulması da önemlidir. Konya Müdafaa-i Hukuk Cemiyeti Başkanı Sivaslı Ali Kemal’in çalışmaları, çabaları Mustafa Kemal Paşa tarafından takdir edilmiştir. Müdafaa-i Hukuk Cemiyeti’nin bu çalışmalar içinde önemsediği işgale ve işgalcilerin uygulamalarına karşı düzenlenen protesto mitingleridir. Bu mitinglerle Konya halkının tepkisi dile getirilmiş, hem de halkın birlik beraberliğinin oluşması sağlanmıştır. Özellikle o günlerde ilk kadın mitingi Konya’da yapılmış, işgale karşı Konyalı kadınların tepkisi bu mitingle ifade edilmiştir. "
                      "Konya, işgal görmeyen Ankara, Kayseri, Yozgat, Çorum, Çankırı gibi İç Anadolu şehirleriyle birlikte kurtuluş savaşında ordunun ihtiyaçlarının karşılandığı lojistik merkezi olmuştur. Cephede savaşan ordunun ihtiyaçları Konya’da toplanmış ve cepheye buradan gönderilmiştir. Konya, cepheden gelen yaralı ve hastaların tedavi gördüğü merkez olmuştur. "
                      "Cumhuriyet dönemi: Konya, 1987 yılında çıkarılan 3399 sayılı kanun ile büyükşehir unvanı kazandı. Başlangıçta üç ilçe (Karatay, Meram ve Selçuklu) Konya Büyükşehir Belediyesi'nin sınırlarına dahil edildi. 2004 yılında çıkarılan 5216 sayılı kanun ile büyükşehir belediyesinin sınırları valilik binası merkez kabul edilerek yarıçapı 30 kilometre olan dairenin sınırlarına genişletildi.[8] 2012 yılında çıkarılan 6360 sayılı kanun ile 2014 Türkiye yerel seçimlerinin ardından büyükşehir belediyesinin sınırları il mülki sınırları oldu."
                      " COĞRAFYA: 39.000 km²'lik yüz ölçümü ile Türkiye'nin en geniş ili olan ve Orta Anadolu yaylası üzerinde Ankara, Aksaray, Niğde, Mersin, Karaman, Antalya, Isparta, Afyon ve Eskişehir illeri ile komşu olan Konya, 36° 22' ve 39° 08' kuzey paralelleri ile 31° 14' ve 34° 05' doğu meridyenleri arasında yer alır. Başta büyük ilçeleri Ereğli, Beyşehir, Akşehir'dir. Toplam 31 ilçesi vardır. Konya büyükşehir nüfusu 2011 sonu itibarıyla 1.085.000 olup Türkiye genelinde 7. sıradadır. İl genelinde ise 2.100.000 olan nüfusuyla Konya ili Türkiye'nin en kalabalık 7. ilidir."
                      " Göller: Tuz Gölü; Kapalı havzasının merkezinde Tuz Gölü oluşmuştur. Ankara, Konya, Aksaray sınırlarının kesiştiği yerde olup bir kısmı Konya ili sınırları içinde yer almaktadır. Tuz Gölü Türkiye'nin üçüncü büyük gölüdür. Derinliği 12 m civarındadır. Yaz mevsiminde buharlaşmanın etkisiyle alanı oldukça küçülür. Kuruyan kesimlerde tuz tortulları meydana gelir. Türkiye'nin tuz ihtiyacının bir kısmı buradan temin edilir. Sulama ve su ürünleri için kullanılmaz. "
                      " Beyşehir Gölü; Konya ilinin batısında Konya-Isparta sınırı üzerinde yer almaktadır. Beyşehir Gölü Türkiye'nin ikinci büyük gölüdür. Aynı zamanda ülkenin en büyük tatlı su gölüdür. Tektonik-karstik olaylarla meydana gelmiştir. Aynı zamanda Türkiye'nin en önemli millî parklarından biridir. Millî park alanı içerisinde aynı anda su depoları olup dağ sporları yapmak imkânı da vardır. Su ürünleri açısından ekonomik değeri yüksektir. Gölün iki plajı, 22 adası ve pek çok kayalığı bulunmaktadır. Göl, ornitolojik bakımdan önemli bir kuş üreme, barınma, beslenme ve konaklama merkezidir. Bu yönü ile turizm açısından önem taşımaktadır. "
                      " Akşehir Gölü; Konya ilinin kuzeybatısında Konya-Afyonkarahisar il sınırında yer alır. Suyu tatlıdır. Tektonik olaylarla meydana gelmiştir. Su ürünleri açısından ekonomik değer gösterir. Sulama suyu olarak kullanılmakta olup kamış üretimide yapılmaktadır. "
                      " Suğla Gölü; Konya ilinin güney batısında yer alır. Oluşumu tektoniktir. Yağışlı yıllarda alanı iyice genişlemekte kurak yıllarda ise göl kurumakta ve alüvyonlı göl tabanı ortaya çıkarak iyi bir tarım alanı oluşturmaktadır. Suyu tatlıdır. Su ürünler ve sulama açısından önemi büyüktür.Ancak Şu an itibarıyla ekili alan olarak kullanılmaktadır.Göl tamamen ikiye bölünmüştür, yarısı ekili alan yarısı göldür."
                      " Ilgın (Çavuşçu) Gölü; Çavuşçu Gölü Konya ilinin kuzey batısında yer alır. Oluşumu tektoniktir. Suları tatlıdır. Su ürünleri açısından önemlidir. Ayrıca bir ayağı ile Atlantı ovaları sulanmaktadır. "
                      " Ereğli Akgöl; Ereğli ilçesinin batısındadır. Eski göl tabanıdır. Çok sığ bir özelliğe sahiptir. Suları tatlıdır. Ivriz deresinde gelen sularla beslenir. "
                      " Yunak Akgöl; Yunak ilçesi yakınlarında küçük bir göldür. Suyu tatlıdır. Çoğu yeri bataklık halindedir. Göl Gökpınar deresi ile Sakarya nehrine boşalmaktadır. "
                      " Diğer göller; Düden Gölü, Acıgöl, Bolluk Gölü, Meke Krater Gölü, Sarıot Gölü, "
                      " İKLİM: Konya'da karasal iklim hüküm sürer. Yazları kuru ve sıcak, kışları soğuk ve kar yağışlıdır. Gece ile gündüz arası sıcaklık farkı yazın 16-22 derece arasındadır. Baharları ve kışları nemden dolayı bu fark 9-12 °C'ye kadar düşer. Kar ortalama 3 ay yerde kalır. Çevresindeki sıcak - soğuk hava merkezlerinden çok etkilenir. İç Anadolu'nun en güney bölgesinde yer almasına rağmen diğer İç Anadolu Bölgesi şehirlerinden daha soğuk olur. Bunun nedeni orta Torosların deniz etkisini tamamen önlemesidir. Konya, 1. jeolojik zamanda Anadolu'daki Tetis denizinin yükselerek yok olması nedeniyle tam bir deniz tabanı ovasına dönüşmüştür. Düzlüğün asıl nedeni budur. İlkbaharda konveksiyonel yağışlar (kırkikindi) sıklıkla görülür. En yağışlı aylar nisan ve mayıstır. Konya ikliminin diğer bir özelliği ise yazların çok geç başlaması, kışların da çok geç bitmesidir. Step ikliminin özelliği olan yaz kuraklığı Türkiye'deki en kaliteli buğdayların yetişmesine neden olmuştur. Baharda nem ve yağmurla yeşeren otlar yazın yerini kuruluk ve sıcaktan dolayı sarıya bırakır. Türkiye'de sis yoğunluğu ve sisli gün sayısı en fazla olan il Konya'dır. Nedeni ise Konya ovasının bir çanak şeklinde bulunmasıdır. Uzun zamanlarda ölçülen en düşük sıcaklık -29 °C, en yüksek sıcaklık ise 41 °C'dir. En çok kar yağan ay şubat, en soğuk ay ocaktır. En sıcak aylar temmuz ve ağustosdur. Diğer bir özellik ise yaz akşamları çevresinde bulunan dağlardaki yüksek basınç alanlarından, ovada bulunan alçak basın alanlarına esen rüzgârdır. Günlük sıcaklık farkının en belirgin özelliği de budur. Ocak ayı sıcaklık ortalaması -0.5 °C, temmuz ayı sıcaklık ortalaması ise 23 °C'dir. Türkiye'nin en az yağış alan ili Konya'dır.",

                    style: new TextStyle(
                      fontSize: 16.0, color: Colors.black,
                    ),
                  ),
                ),
              ),
              // Text('Konya Hakkında',
              //     style: GoogleFonts.pacifico(fontSize: 60.0, backgroundColor: Colors.teal)),
              // Text("Konya, Türkiye'nin yüz ölçümü bakımından en büyük ili ve en kalabalık yedinci şehridir. 31 ilçeden oluşur. Konya İl Nüfusu: 2.250.020'dir. (2020) [1] Trafik plaka numarası 42'dir.[3] 1875'te kurulan Konya Belediyesi, 1987'de çıkarılan 3399 sayılı yasa gereğince 'büyükşehir' statüsüne kavuşmuş olup 1989'dan beri belediye hizmetleri bu statüye göre yürütülmektedir. 2014'te 6360 sayılı kanun ile büyükşehir belediyesinin sınırları il mülki sınırları oldu. "
              //     "Ekonomik açıdan Türkiye'nin gelişmiş kentlerinden biri olan Konya doğal ve tarihsel zenginlikleriyle de önem taşır. Dünyanın en eski yerleşimlerinden biri olan Çatalhöyük, 2012 yılında UNESCO Dünya Miras Listesi'ne alınmıştır. Şehir Anadolu Selçukluları’nın ve Karamanoğulları’nın başkentliğini yapmıştır. Türkiye'nin en önemli sanayi kentlerinden birisidir. Anadolu Kaplanları'ndandır. Şehrin futbol takımı Konyaspor'dur. Yöresel yemekleri Etliekmek, Bamya Çorbası, Mevlana böreği, Yağ Somunu, Tirit, Konya Pilavı, Sac arası ve Fırın kebabı'dır. Konya’nın simgeleri Mevlana Müzesi (Kubbe-i Hadrâ), çift başlı kartal'dır.",
              //     style: GoogleFonts.pacifico(fontSize: 60.0)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  //         (Set<MaterialState> states) {
                  //       if (states.contains(MaterialState.pressed))
                  //         return Colors.teal;
                  //       return null; // Use the component's default.
                  //     },
                  //   ),
                  // ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Anasayfaya Dön'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}