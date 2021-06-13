import 'package:flutter/material.dart';
import 'package:bilgi_yarisma/api/views/albums_view.dart';
import 'package:bilgi_yarisma/api/views/sozluk_view.dart';

class Api extends StatefulWidget {
  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API ve ListView Örneği',
      home: SozlukView(),
    );
  }
}
