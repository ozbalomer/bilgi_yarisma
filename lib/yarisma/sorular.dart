//import 'dart:convert';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';


import 'package:bilgi_yarisma/yarisma/bitir.dart';
import 'package:flutter/material.dart' show BuildContext, Center, Colors, Column, EdgeInsets, ElevatedButton, MainAxisAlignment, MaterialPageRoute, ModalRoute, Navigator, Padding, RouteSettings, Scaffold, SizedBox, State, StatefulWidget, Text, TextAlign, TextStyle, Widget;

import 'bitir.dart';

class Sorular extends StatefulWidget {
  @override
  _SorularState createState() => _SorularState();
}

String zamaniFormatla(int milisaniye) {
  var saniye = milisaniye ~/ 1000; // ~/ Tam sayı bölme işlemidir
  var dakika = ((saniye % 3600) ~/ 60).toString().padLeft(2, '0');
  var saniyeler = (saniye % 60).toString().padLeft(2, '0');

  return "$dakika:$saniyeler";
}

class _SorularState extends State<Sorular> {
  String adSoyad = '';
  String ogrNo = '';

  int mevcutsoru = 0;
  String mevcutcevap = '';
  int puan = 0;
  int kullanilansure = 0;

  Stopwatch _sayac;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _sayac = Stopwatch();
    _timer = new Timer.periodic(new Duration(seconds: 1), (timer) {
      setState(() {});
    });
    mevcutsoru = 0;
    mevcutcevap = '';
    puan = 0;
    kullanilansure = 0;
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void BitireYolla(){
    var data = [];
    data.add(adSoyad);
    data.add(ogrNo);
    data.add(puan.toString());
    data.add(zamaniFormatla(kullanilansure));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Bitir(),
          settings: RouteSettings(
            arguments: data,
          ),
        ));
  }

  var sorular = [
    {
      'soru': "Türkiye'nin yüz ölçümü bakımından en büyük ili hangisidir?",
      'cevaplar': ['Konya', 'Sivas', 'Diyarbakır ','İstanbul'],
      'dogrucevap': 'Konya'
    },
    {
      'soru': 'Dünyanın en eski yerleşim yerlerinden biri olan ve UNESCO Dünya Miras Listesine alınan "Çatalhöyük" hangi ilçededir?',
      'cevaplar': ['Meram', 'Selçuklu', 'Çumra', 'Karatay'],
      'dogrucevap': 'Çumra'
    },
    {
      'soru': 'Hz. Mevlana hangi yılda doğmuştur?',
      'cevaplar': ['1099', '1150', '1207', '1273'],
      'dogrucevap': '1207'
    },
    {
      'soru': "Konya sınırlarında yer alan Türkiye'nin ikinci büyük gölü ve en büyük tatlı su gölü hangisidir?",
      'cevaplar': ['Akşehir Gölü', 'Beyşehir Gölü', 'Tuz Gölü', 'Eğridir Gölü'],
      'dogrucevap': 'Beyşehir Gölü'
    },
    {
      'soru': 'Konya da tarihi "Kral Yolu" üzerinde Kapadokya benzeri dokusu ile dikkati çeken antik kent hangisidir?',
      'cevaplar': ['Çatalhöyük', 'Kubadabad Sarayı', 'Selçuklu Köşkü', 'Kilistra Kenti'],
      'dogrucevap': 'Kilistra Kenti'
    },
    {
      'soru': 'Konya ilinin bitki örtüsü nasıldır?',
      'cevaplar': ['Maki', 'Savan', 'Tundra', 'Bozkır'],
      'dogrucevap': 'Bozkır'
    },
    {
      'soru': "Konya ili Türkiye'nin hangi coğrafi bölgesinde yer almaktadır?",
      'cevaplar': ['İç Anadolu', 'Güneydoğu Anadolu', 'Akdeniz', 'Doğu Anadolu'],
      'dogrucevap': 'İç Anadolu'
    },
    {
      'soru': "Hz Mevlana'nın hocası kimdir?",
      'cevaplar': ['Sahibiata', 'Şemsi Tebrizi', 'Alaeddin Keykubat', 'Sadrettin Konevi'],
      'dogrucevap': 'Şemsi Tebrizi'
    },
    {
      'soru': "Hangisi Konya'da bulunan Selçuklu Dönemi tarihi eserlerinden değildir?",
      'cevaplar': ['Karatay Medresesi', 'Sahibiata Külliyesi', 'Sırçalı Medrese', 'Divriği Camii'],
      'dogrucevap': 'Divriği Camii'
    },
    {
      'soru': 'Büyük Filozof ve mizah ustası Nasreddin Hoca nın "Dünyanın Ortası" olarak nitelendirdiği yer Konya ya bağlı hangi ilçede bulunmaktadır?',
      'cevaplar': ['Akşehir', 'Meram', 'Seydişehir', 'Selçuklu'],
      'dogrucevap': 'Akşehir'
    },
  ];

  void kontrolEt() {
    if (mevcutsoru > 8) {
      mevcutsoru = 0;
      _timer.cancel();
      BitireYolla();
    } else {
      if (mevcutcevap == sorular[mevcutsoru]['dogrucevap']) {
        puan = puan + 10;
        mevcutsoru++;
        kullanilansure = kullanilansure + _sayac.elapsedMilliseconds;
        _sayac.reset();
      } else {
        puan = puan - 10;
        mevcutsoru++;
        kullanilansure = kullanilansure + _sayac.elapsedMilliseconds;
        _sayac.reset();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    adSoyad = data[0];
    ogrNo = data[1];


    _sayac.start();
    if (_sayac.elapsedMilliseconds > 9999 && mevcutsoru < 9) {
      kullanilansure = kullanilansure + _sayac.elapsedMilliseconds;
      _sayac.reset(); // 10 saniyede cevap verilmezse diğer soruya geçiyor
      mevcutsoru++;
    }

    if (mevcutsoru == 9 && _sayac.elapsedMilliseconds > 9999) {
      Future.delayed(Duration.zero, () async {
        _sayac.reset(); // Sıfırlama
        _sayac.stop(); // Bitiş ekranına geldik artık
        _timer.cancel(); // Yeni ekrana geçtiğinde saymayı bitirsin
        mevcutsoru = 0;
        BitireYolla();
      });
    }

    List cevaplistesi = [];
    for (var u in sorular[mevcutsoru]['cevaplar']) {
      cevaplistesi.add(u);
    }

    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bilgi Yarışması', style: GoogleFonts.pacifico(fontSize: 25.0, color: Colors.teal[400]),
            ),
            Text('Ad-Soyad: ' + adSoyad, style: TextStyle(fontSize: 15.0)),
            Text('Öğrenci No: ' + ogrNo, style: TextStyle(fontSize: 15.0)),
            Text(
              'Mevcut Soru /Toplam Soru: ' +
                  mevcutsoru.toString() +
                  ' / ' +
                  sorular.length.toString(),
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Puan: ' + puan.toString(),
              style: TextStyle(fontSize: 14),
            ),
            Text(
              sorular[mevcutsoru]['soru'].toString(),
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  setState(() {
                    mevcutcevap = cevaplistesi[0].toString();
                  });
                  kontrolEt();
                },
                child: Text(
                  cevaplistesi[0],
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  setState(() {
                    mevcutcevap = cevaplistesi[1].toString();
                  });
                  kontrolEt();
                },
                child: Text(
                  cevaplistesi[1],
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  setState(() {
                    mevcutcevap = cevaplistesi[2].toString();
                  });
                  kontrolEt();
                },
                child: Text(
                  cevaplistesi[2],
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  setState(() {
                    mevcutcevap = cevaplistesi[3].toString();
                  });
                  kontrolEt();
                },
                child: Text(
                  cevaplistesi[3],
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Text(zamaniFormatla(_sayac.elapsedMilliseconds),
                style: TextStyle(fontSize: 22.0)),
            Text('Kullanılan Süre: ' + zamaniFormatla(kullanilansure),
                style: TextStyle(fontSize: 22.0)),
            // SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Anasayfaya Dön'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}