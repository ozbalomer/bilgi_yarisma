import 'dart:math';
import 'package:flutter/material.dart';

class Yemek extends StatefulWidget {
  @override
  _YemekState createState() => _YemekState();
}

class _YemekState extends State<Yemek> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Yemek Yesem?', style: TextStyle(color: Colors.black)),
        ),
        body: Yemekler(),
      ),
    );
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

class Yemekler extends StatefulWidget {
  const Yemekler({Key key}) : super(key: key);

  @override
  _YemeklerState createState() => _YemeklerState();
}

class _YemeklerState extends State<Yemekler> {
  int corbaNo=1;
  int yemekNo=2;
  int tatliNo=3;

  List<String> corbaAdlari=[
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'];

  List<String> yemekAdlari=[
    'Karnıyarık',
    'Mantı',
    'Kuru Fasülye',
    'İçli Köfte',
    'Izgara Balık'];

  List<String> tatliAdlari=[
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'];

  void yemekleriYenile(){
    setState(() {
      yemekNo = Random().nextInt(5)+1;
      corbaNo = Random().nextInt(5)+1;
      tatliNo = Random().nextInt(5)+1;

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
                  onPressed: yemekleriYenile,
                  //     () {
                  //   setState(() {
                  //     corbaNo = Random().nextInt(5)+1;
                  //   });
                  //
                  // },
                  child: Image.asset('assets/yemek/corba_$corbaNo.jpg')),
            ),
          ),
          Text(corbaAdlari[corbaNo-1], style: TextStyle(fontSize: 20),),
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
                  onPressed:yemekleriYenile,
                  //     () {
                  //   setState(() {
                  //     yemekNo = Random().nextInt(5)+1;
                  //   });
                  // },
                  child: Image.asset('assets/yemek/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(yemekAdlari[yemekNo-1], style: TextStyle(fontSize: 20),),
          Container(width: 200,
              child: Divider(height: 5, color: Colors.black,)),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                //color: Colors.red,
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekleriYenile,
                //     () {
                //   setState(() {
                //     tatliNo = Random().nextInt(5)+1;
                //   });
                // },
                child: Image.asset('assets/yemek/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(tatliAdlari[tatliNo-1], style: TextStyle(fontSize: 20),),
          Container(width: 200,
              child: Divider(height: 5, color: Colors.black,)),
        ],
      ),
    );

  }
}

