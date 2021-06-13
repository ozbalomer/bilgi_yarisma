import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bitir extends StatefulWidget {
  @override
  _BitirState createState() => _BitirState();
}

class _BitirState extends State<Bitir> {
  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bilgi Yarışması Sonucunda', style: GoogleFonts.pacifico(fontSize: 40.0, color: Colors.teal)),
            Text('Ad / Soyad:', style: GoogleFonts.pacifico(fontSize: 20.0, color: Colors.teal)),
            Text(data[0].toString()),
            Text('Öğrenci Numarası:', style: GoogleFonts.pacifico(fontSize: 20.0, color: Colors.teal)),
            Text(data[1].toString()),
            Text('Kullanılan Süre:', style: GoogleFonts.pacifico(fontSize: 20.0, color: Colors.teal)),
            Text(data[3].toString()),
            Text(data[2].toString()),
            Text('Puan Aldınız.', style: GoogleFonts.pacifico(fontSize: 20.0, color: Colors.teal)),
            Text('...'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('ANASAYFA'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}