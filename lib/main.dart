import 'package:flutter/material.dart';
import 'package:projek_1/login.dart';
import 'package:projek_1/informasi.dart';
import 'package:projek_1/kalkulatorSederhana.dart';
import 'package:projek_1/ganjilGenap.dart';
import 'package:projek_1/gallery.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
    login.tag: (context) => login(),
    informasi.tag: (context) => informasi(),
    kalkulatorSederhana.tag: (context) => kalkulatorSederhana(),
    ganjilGenap.tag: (context) => ganjilGenap(),
    gallery.tag: (context) => gallery(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      routes: routes,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

