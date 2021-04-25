import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mevlana extends StatefulWidget {
  @override
  _MevlanaState createState() => _MevlanaState();
}

class _MevlanaState extends State<Mevlana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Hz. Mevlâna nın Hayatı'),
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
                  child: new Text("Mevlâna 30 Eylül 1207 yılında bugün Afganistan sınırları içerisinde yer alan Horasan Ülkesinin Belh şehrinde doğmuştur. Mevlâna'nın babası Belh Şehrinin ileri gelenlerinden olup, sağlığında 'Bilginlerin Sultanı' unvanını almış olan Hüseyin Hatibi oğlu Bahâeddin Veled'tir. Annesi ise Belh Emiri Rükneddin'in kızı Mümine Hatun'dur. Sultânü'I-Ulemâ Bahaeddin Veled, bazı siyasi olaylar ve yaklaşmakta olan Moğol istilası nedeniyle Belh’ den ayrılmak zorunda kalmıştır. Sultânü'I-Ulemâ 1212 veya 1213 yıllarında aile fertleri ve yakın dostları ile birlikte Belh’ den ayrıldı. Mevlana dervişler Sultânü'I-Ulemâ'nın ilk durağı Nişâbur olmuştur. Nişâbur şehrinde tanınmış mutasavvıf Ferîdüddin Attar ile de karşılaştılar. Mevlâna burada küçük yaşına rağmen Ferîdüddin Attar'ın ilgisini çekmiş ve takdirlerini kazanmıştır. Sultânü'I Ulemâ Nişabur'dan Bağdat'a ve daha sonra Kûfe yolu ile Kâbe’ye hareket etti. Hac farizasını yerine getirdikten sonra, dönüşte Şam'a uğradı. Şam'dan sonra Malatya, Erzincan, Sivas, Kayseri, Niğde yolu ile Lârende'ye (Karaman) geldiler. Karaman'da Subaşı Emir Mûsâ'nın yaptırdıkları medreseye yerleştiler."
                  "1222 yılında Karaman'a gelen Sultânü'l-Ulemâ ve ailesi burada 7 yıl kaldılar. Mevlâna 1225 yılında Şerafettin Lala'nın kızı Gevher Hatun ile Karaman'da evlendi. Bu evlilikten Mevlâna'nın Sultan Veled ve Alâeddin Çelebi adlı iki oğlu oldu. Yıllar sonra Gevher Hatun'u kaybeden Mevlâna bir çocuklu dul olan Kerrâ Hatun ile ikinci evliliğini yaptı. Mevlâna'nın bu evlilikten de Muzaffereddin ve Emir Âlim Çelebi adlı iki oğlu ile Melike Hatun adlı bir kızı dünyaya geldi. Bu yıllarda Anadolu’nun büyük bir kısmı Selçuklu Devleti'nin egemenliği altında idi. Konya'da bu devletin baş şehri idi. Konya sanat eserleri ile donatılmış, ilim adamları ve sanatkârlarla dolup taşmıştı. Kısaca Selçuklu Devleti en parlak devrini yaşıyordu ve Devletin hükümdarı Alâeddin Keykubad idi. Alâeddin Keykubad Sultânü'I-Ulemâ Bahaeddin Veled'i Karaman'dan Konya'ya davet etti ve Konya'ya yerleşmesini istedi. Bahaeddin Veled Sultanın davetini kabul etti ve Konya'ya 3 Mayıs 1228 yılında ailesi ve dostları ile geldiler. Sultan Alâeddin kendilerini Mevlana Celalettin Rumi muhteşem bir törenle karşıladı ve Altunapa (İplikçi) Medresesi'ni ikametlerine tahsis ettiler. Sultânü'l-Ulemâ 12 Ocak 1231 yılında Konya'da vefat etti. Mezar yeri olarak, Selçuklu Sarayının Gül Bahçesi seçildi. Halen müze olarak kullanılan Mevlâna Dergâhındaki bugünkü yerine defnolundu."
                  "Sultânü'I-Ulemâ ölünce, talebeleri ve müritleri bu defa Mevlâna'nın çevresinde toplandılar. Mevlâna'yı babasının tek varisi olarak gördüler. Gerçekten de Mevlâna büyük bir ilim ve din bilgini olmuş, İplikçi Medresesi'nde vaazlar veriyordu. Vaazları kendisini dinlemeye gelenlerle dolup taşıyordu. Mevlâna 15 Kasım 1244 yılında Şems-i Tebrizî ile karşılaştı. Mevlâna Şems’te 'mutlak kemâlin varlığını' cemalinde de 'Tanrı nurlarını' görmüştü. Ancak beraberlikleri uzun sürmedi. Şems aniden öldü. Mevlâna Şems'in ölümünden sonra uzun yıllar inzivaya çekildi. Daha sonraki yıllarda Selâhaddin Zerkûbî ve Hüsameddin Çelebi, Şems-i Tebriz’inin yerini doldurmaya çalıştılar. Yaşamını 'Hamdım, piştim, yandm' sözleri ile özetleyen Mevlâna 17 Aralık 1273 Pazar günü Hakk' ın rahmetine kavuştu. Mevlâna'nın cenaze namazını Mevlâna'nın vasiyeti üzerine Sadreddin Konevî kıldıracaktı. Ancak Sadreddin Konevî çok sevdiği Mevlâna'yı kaybetmeye dayanamayıp cenazede bayıldı. Bunun üzerine, Mevlâna'nın cenaze namazını Kadı Sıraceddin kıldırdı. Mevlâna ölüm gününü yeniden doğuş günü olarak kabul ediyordu. O öldüğü zaman sevdiğine yani Allah'ına kavuşacaktı. Onun için Mevlâna ölüm gününe düğün günü veya gelin gecesi manasına gelen 'Şeb-i Arûs'' diyordu ve dostlarına ölümünün ardından ah-ah, vah-vah edip ağlamayın diyerek vasiyet ediyordu."
                    "Hz. Mevlânâ’nın Vasiyeti: Size, gizlide ve açıkta Allah’tan korkmayı, az yemeyi, az uyumayı, az konuşmayı, isyan ve günahları terk etmeyi, oruç tutmayı, namaza devam etmeyi, sürekli olarak şehveti terk etmeyi, bütün yaratıklardan gelen cefaya tahammüllü olmayı, aptal ve cahillerle oturmamayı, güzel davranışlı ve olgun kişilerle birlikte bulunmayı vasiyet ediyorum. İnsanların en hayırlısı, insanlara yararı olandır. Sözün en hayırlısı, az ve anlaşılır olanıdır."
                  "Ölümümüzden sonra mezarımızı yerde aramayınız!"
                  "Bizim mezarımız ariflerin gönüllerindedir.",
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