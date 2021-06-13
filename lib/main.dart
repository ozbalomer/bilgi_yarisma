import 'package:bilgi_yarisma/hata.dart';
import 'package:bilgi_yarisma/mevlana.dart';
import 'package:bilgi_yarisma/sorular.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AssetImage, BuildContext, Center, CircleAvatar, Colors, Column, Container, EdgeInsets, ElevatedButton, InputDecoration, MainAxisAlignment, MaterialApp, MaterialPageRoute, Navigator, Padding, RouteSettings, SafeArea, Scaffold, SizedBox, State, StatefulWidget, StatelessWidget, Text, TextFormField, TextInputType, ThemeData, Widget, runApp;
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bitir.dart';
import 'hakkinda.dart';
import 'foto.dart';
import 'konya.dart';
import 'yemek.dart';
import 'yerler.dart';
import 'mevlana.dart';
import 'grafik+animasyon/LineChartSample1.dart';
import 'grafik+animasyon/linechartsample2.dart';
import 'sqllite/todo.dart';
import 'gestures/jestler.dart';
import 'api/api.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firestore.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bilgi Yarışması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
         '/sorular': (context) => Sorular(),
         '/bitir': (context) => Bitir(),
         '/hakkinda': (context) => Hakkinda(),
         '/hata': (context) => Hata(),
         '/foto': (context) => Foto(),
         '/konya': (context) => Konya(),
         '/yemek': (context) => Yemek(),
         '/yerler': (context) => Yerler(),
         '/mevlana': (context) => Mevlana(),
         '/grafik' : (context) => LineChartSample1(),
         '/grafik2' : (context) => LineChartSample2(),
         '/todo' : (context) => Todo(),
         '/jestler' : (context) => Jestler(),
         '/api' : (context) => Api(),
         '/firestore' : (context) => Firestore(),

      },
      // home: FutureBuilder(
      //   future: _initialization,
      //   builder: (context, snapshot){
      //     if(snapshot.hasError){
      //       return Center(child:Text('Bir Hata Oluştu'));
      //     } else if (snapshot.hasdata){
      //       return MyHomePage(title: 'aaa');
      //     } else {
      //       return Center(Child: CircularProgressIndicator());
      //     }
      //   }
      // )
    );
    
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String adSoyad = '';
  String ogrNo = '';

  void kontrol() {

    // FirebaseFirestore firestore = FirebaseFirestore.instance;
    // CollectionReference bilgiyarismaRef =
    //   FirebaseFirestore.instance.collection('bilgiyarisma');
    // bilgiyarismaRef.add({'AdSoyad' : 'adSoyad'});

    if ((adSoyad.length > 9) && (ogrNo.length == 9)) {
      var data = [];
      data.add(adSoyad);
      data.add(ogrNo);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sorular(),
            settings: RouteSettings(
              arguments: data,
            ), //builder: (BuildContext context) {  },
          ));
    } else {
      Navigator.pushNamed(context, '/hata');
    }
  }

  void _adSoyadKaydet(String text) {
    setState(() {
      adSoyad = text;
    });
  }

  void _ogrNoKaydet(String text) {
    setState(() {
      ogrNo = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool butonpasif = true;
    if ((adSoyad.length > 9) && (ogrNo.length == 9)) {
      butonpasif = false;
    } else {
      butonpasif = true;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
             CircleAvatar(
               radius: 80,
               backgroundColor: Colors.lime,
               backgroundImage: AssetImage('assets/images/Bilgyar.jpg'),
             ),
            Text(
              'Bilgi Yarışması',
              style: GoogleFonts.pacifico(fontSize: 30.0, color: Colors.teal),
            ),
            Text(
              'Adınız ve Soyadınız:',
              style: GoogleFonts.pacifico(fontSize: 20.0, color: Colors.teal[400]),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Adınızı ve Soyadınızı giriniz',
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  onChanged: (text) {
                    _adSoyadKaydet(text);
                  },
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Öğrenci Numaranız:',
              style: GoogleFonts.pacifico(fontSize: 20.0, color: Colors.teal[400]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 45.0,),
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 300,
                child: TextFormField(
                  maxLength: 9,
                  decoration: const InputDecoration(
                    hintText: 'Öğrenci numaranızı giriniz',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (text) {
                    _ogrNoKaydet(text);
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0,),
              //padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: butonpasif ? null : kontrol,
                  // FirebaseFirestore firestore = FirebaseFirestore.instance;
                  // CollectionReference bilgiyarismaRef =
                  // FirebaseFirestore.instance.collection('bilgiyarisma');
                  // bilgiyarismaRef.add({'AdSoyad' : 'adSoyad'});
                //onPressed: kontrol,
                child: Text('Yarışmaya Başla', style: GoogleFonts.pacifico(fontSize: 20.0, color: Colors.white),),
              ),
            ),
            SizedBox(height: 1.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 45.0,),
              //padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Hakkinda()),
                   );
                },
                child: Text('Çeşitli Uygulamalar İçin Tıklayınız'),


              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 45.0,),
              //padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  FirebaseFirestore firestore = FirebaseFirestore.instance;
                  CollectionReference bilgiyarismaRef =
                  FirebaseFirestore.instance.collection('bilgiyarisma');
                  bilgiyarismaRef.add({'AdSoyad' : '$adSoyad'});
                  bilgiyarismaRef.add({'OgrNo' : '$ogrNo'});
                },
                child: Text('Veri Tabanına Ekle(Firestore)'),


              ),
            ),


          ],
        ),
      ),
      ),
    );
  }
}