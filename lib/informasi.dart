import 'package:flutter/material.dart';
import 'package:projek_1/login.dart';
import 'package:projek_1/kalkulatorSederhana.dart';
import 'package:projek_1/ganjilGenap.dart';
import 'package:projek_1/gallery.dart';

class informasi extends StatefulWidget {
  static String tag = 'informasi';

  State createState() => informasiState();
}

class informasiState extends State<informasi>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    // Scaffold is structure to define app bar and stuff
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("Tugas Pertemuan 2"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("img/background.jpeg",
            fit: BoxFit.cover,
          ),
          Column(
            // mainAxisAlignment means vertical
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("img/logo.jpeg", width:200),
              Padding(padding: EdgeInsets.all(20.0),),
              Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  )
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              Text(
                "Berlyandhica Alam F. 123210060",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {
                  Navigator.of(context).pushNamed(kalkulatorSederhana.tag);
                },
                color: Colors.white,
                child: Text('Kalkulator Sederhana', style: TextStyle(color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {
                  Navigator.of(context).pushNamed(ganjilGenap.tag);
                },
                color: Colors.white,
                child: Text('Ganjil atau Genap', style: TextStyle(color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {
                  Navigator.of(context).pushNamed(gallery.tag);
                },
                color: Colors.white,
                child: Text('Gallery', style: TextStyle(color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {
                  Navigator.of(context).pushNamed(login.tag);
                },
                color: Colors.white,
                child: Text('Kembali', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}