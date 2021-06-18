import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Çeşitli Uygulamalar'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Text('Bilgi Yarışması',
              //       style: GoogleFonts.pacifico(fontSize: 30.0, backgroundColor: Colors.teal)),
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text('Bu uygulama Ömer ÖZBAL tarafından "Mobil Uygulama" dersi kapsamında yapılmıştır.',
                    style: GoogleFonts.pacifico(
                      fontSize: 25.0, color: Colors.black,
                    ),
                  ),
                ),
              ),
              // Text('Bu uygulama Ömer ÖZBAL tarafından "Mobil Uygulama" dersi kapsamında yapılmıştır.',
              //     style: GoogleFonts.pacifico(fontSize: 60.0)),
              Container(
                  width: 200,
                  child: Divider(height: 15, color: Colors.white,)),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
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
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
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
                    Navigator.pushNamed(context, '/foto');
                  },
                  child: Text('Konya dan Fotoğraflar'),
                ),
              ),
              SizedBox(height: 1.0,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
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
                    Navigator.pushNamed(context, '/konya');
                  },
                  child: Text('Konya Hakkında'),
                ),
              ),
              SizedBox(height: 1.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
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
                    Navigator.pushNamed(context, '/mevlana');
                  },
                  child: Text('Hz. Mevlana nın Hayatı'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
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
                    Navigator.pushNamed(context, '/yemek');
                  },
                  child: Text('BUGÜN NE YESEM'),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 16.0),
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.teal, // background
              //       onPrimary: Colors.white, // foreground
              //     ),
              //     // style: ButtonStyle(
              //     //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
              //     //         (Set<MaterialState> states) {
              //     //       if (states.contains(MaterialState.pressed))
              //     //         return Colors.teal;
              //     //       return null; // Use the component's default.
              //     //     },
              //     //   ),
              //     // ),
              //     onPressed: () {
              //       Navigator.pushNamed(context, '/yemek');
              //     },
              //     child: Text('BUGÜN NE YESEM'),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
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
                    Navigator.pushNamed(context, '/jestler');
                  },
                  child: Text('Jestler (Gestures)'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
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
                    Navigator.pushNamed(context, '/api');
                  },
                  child: Text('Sözlük (İngilizce)'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  },
                  child: Text('Görüşleriniz'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/firestore');
                  },
                  child: Text('Firestore'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/grafik2');
                  },
                  child: Text('Grafik+Animasyon'),
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}