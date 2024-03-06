import 'package:flutter/material.dart';
import 'package:projek_1/informasi.dart';

class ganjilGenap extends StatefulWidget {
  static String tag = 'ganjilGenap';

  @override
  State createState() => ganjilGenapState();
}

class ganjilGenapState extends State<ganjilGenap>
    with SingleTickerProviderStateMixin {

  TextEditingController controller = TextEditingController();
  String result = '';

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
              Form(
                  child: Theme(
                    data: ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                        inputDecorationTheme: InputDecorationTheme(
                            labelStyle:
                            TextStyle(color: Colors.white, fontSize: 15.0))),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                              "Ganjil atau Genap",
                              style: TextStyle(
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                          TextFormField(
                            controller: controller,
                            decoration:
                            InputDecoration(labelText: "Masukkan Bilangan Bulat"),
                            keyboardType: TextInputType.number,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                          ),
                          MaterialButton(
                            minWidth: 200.0,
                            height: 42.0,
                            onPressed: () {
                              cekBilangan();
                            },
                            color: Colors.white,
                            child: Text('Cek Bilangan', style: TextStyle(color: Colors.black)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                          ),
                          MaterialButton(
                            minWidth: 200.0,
                            height: 42.0,
                            onPressed: () {
                              Navigator.of(context).pushNamed(informasi.tag);
                            },
                            color: Colors.white,
                            child: Text('Kembali', style: TextStyle(color: Colors.black)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                          ),
                          Text(
                            result,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  void cekBilangan() {
    int number = int.tryParse(controller.text) ?? 0;

    if (number % 2 == 0) {
      setState(() {
        result = 'Bilangan genap';
      });
    } else {
      setState(() {
        result = 'Bilangan ganjil';
      });
    }
  }
}