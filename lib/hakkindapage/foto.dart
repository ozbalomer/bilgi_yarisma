import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class Foto extends StatefulWidget {
//   @override
//   _FotoState createState() => _FotoState();
// }
//
// class _FotoState extends State<Foto> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[350],
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('Fotoğraflar'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Text('Konya Fotoğrafları',
//                   style: GoogleFonts.pacifico(fontSize: 60.0, backgroundColor: Colors.teal)),
//               // Text('...',
//               //     style: GoogleFonts.pacifico(fontSize: 60.0)),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.teal, // background
//                     onPrimary: Colors.white, // foreground
//                   ),
//                   // style: ButtonStyle(
//                   //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
//                   //         (Set<MaterialState> states) {
//                   //       if (states.contains(MaterialState.pressed))
//                   //         return Colors.teal;
//                   //       return null; // Use the component's default.
//                   //     },
//                   //   ),
//                   // ),
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/');
//                   },
//                   child: Text('Anasayfaya Dön'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class Foto extends StatefulWidget {
  @override
  _FotoState createState() => _FotoState();
}

class _FotoState extends State<Foto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Konya Fotoğrafları', style: TextStyle(color: Colors.black)),
        ),
        body: Fotograflar(),
      );
   // );
  }
}

// class Yemekler extends StatelessWidget {
//   int corbaNo=1;
//   int yemekNo=2;
//   int tatliNo=3;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               // ignore: deprecated_member_use
//               child: FlatButton(
//                   //color: Colors.red,
//                   highlightColor: Colors.white,
//                   splashColor: Colors.white,
//                   onPressed: () {
//                     corbaNo=5;
//                   },
//                   child: Image.asset('assets/corba_$corbaNo.jpg')),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               // ignore: deprecated_member_use
//               child: FlatButton(
//                   //color: Colors.red,
//                   highlightColor: Colors.white,
//                   splashColor: Colors.white,
//                   onPressed: () {
//                     print('2 Tıklandı');
//                   },
//                   child: Image.asset('assets/yemek_$yemekNo.jpg')),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: FlatButton(
//                 //color: Colors.red,
//                 highlightColor: Colors.white,
//                 splashColor: Colors.white,
//                 onPressed: () {
//                   print('3 Tıklandı');
//                 },
//                 child: Image.asset('assets/tatli_$tatliNo.jpg'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Fotograflar extends StatefulWidget {
  const Fotograflar({Key key}) : super(key: key);

  @override
  _FotograflarState createState() => _FotograflarState();
}

class _FotograflarState extends State<Fotograflar> {
  int konyaNo=1;
  int konyaaNo=2;
  int konyaaaNo=3;

  List<String> konyaAdlari=[
    'Alaaddin Tepesi',
    'Beyşehir Köprü',
    'Beyşehir Gölü',
    'Yerköprü Şelalesi',
    'İnce Minareli Medrese'];

  List<String> konyaaAdlari=[
    'Kyoto-Japon Parkı',
    'Kelebekler Vadisi',
    'Konya Şehire Bakış',
    'Meram Bağları',
    'Meram Bağları 2'];

  List<String> konyaaaAdlari=[
    'Mevlana Müzesi Meydanı',
    'Mevlana Müzesi',
    'Şehitler Abidesi',
    'Sille',
    'Meke Gölü'];

  void fotolariYenile(){
    setState(() {
      konyaaNo = Random().nextInt(5)+1;
      konyaNo = Random().nextInt(5)+1;
      konyaaaNo = Random().nextInt(5)+1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                //color: Colors.red,
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: fotolariYenile,
                  //     () {
                  //   setState(() {
                  //     konyaNo = Random().nextInt(5)+1;
                  //   });
                  //
                  // },
                  child: Image.asset('assets/konya/konya_$konyaNo.jpg')),
            ),
          ),
          Text(konyaAdlari[konyaNo - 1], style: TextStyle(fontSize: 20),),
          Container(width: 200,
              child: Divider(height: 5, color: Colors.black,)),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                //color: Colors.red,
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: fotolariYenile,
                  //     () {
                  //   setState(() {
                  //     konyaaNo = Random().nextInt(5)+1;
                  //   });
                  // },
                  child: Image.asset('assets/konya/konyaa_$konyaaNo.jpg')),
            ),
          ),
          Text(konyaaAdlari[konyaaNo - 1], style: TextStyle(fontSize: 20),),
          Container(width: 200,
              child: Divider(height: 5, color: Colors.black,)),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                //color: Colors.red,
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: fotolariYenile,
                //     () {
                //   setState(() {
                //     konyaaaNo = Random().nextInt(5)+1;
                //   });
                // },
                child: Image.asset('assets/konya/konyaaa_$konyaaaNo.jpg'),
              ),
            ),
          ),
          Text(konyaaaAdlari[konyaaaNo - 1], style: TextStyle(fontSize: 20),),
          Container(width: 200,
              child: Divider(height: 5, color: Colors.black,)),
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
                Navigator.pushNamed(context, '/hakkinda');
              },
              child: Text('Önceki Sayfaya Dön'),
            ),
          ),
        ],
      ),
    );
  }
}
// class _YemekState extends State<Yemek> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[350],
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('Yemekler'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Text('Konya Yemekleri',
//                   style: GoogleFonts.pacifico(fontSize: 60.0, backgroundColor: Colors.teal)),
//               // Text('...',
//               //     style: GoogleFonts.pacifico(fontSize: 60.0)),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.teal, // background
//                     onPrimary: Colors.white, // foreground
//                   ),
//                   // style: ButtonStyle(
//                   //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
//                   //         (Set<MaterialState> states) {
//                   //       if (states.contains(MaterialState.pressed))
//                   //         return Colors.teal;
//                   //       return null; // Use the component's default.
//                   //     },
//                   //   ),
//                   // ),
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/');
//                   },
//                   child: Text('Anasayfaya Dön'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }