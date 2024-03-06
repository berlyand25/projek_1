import 'package:flutter/material.dart';
import 'package:projek_1/informasi.dart';

class kalkulatorSederhana extends StatefulWidget {
  static String tag = 'kalkulatorSederhana';

  @override
  State createState() => kalkulatorSederhanaState();
}

class kalkulatorSederhanaState extends State<kalkulatorSederhana>
    with SingleTickerProviderStateMixin {

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
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
                              "Kalkulator Sederhana",
                              style: TextStyle(
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                          TextFormField(
                            controller: controller1,
                            decoration:
                            InputDecoration(labelText: "Masukkan Bilangan Pertama"),
                            keyboardType: TextInputType.number,
                          ),
                          TextFormField(
                            controller: controller2,
                            decoration:
                            InputDecoration(labelText: "Masukkan Bilangan Kedua"),
                            keyboardType: TextInputType.number,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                          ),
                          MaterialButton(
                            minWidth: 200.0,
                            height: 42.0,
                            onPressed: () {
                              penjumlahan();
                            },
                            color: Colors.white,
                            child: Text('Penjumlahan', style: TextStyle(color: Colors.black)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                          ),
                          MaterialButton(
                            minWidth: 200.0,
                            height: 42.0,
                            onPressed: () {
                              pengurangan();
                            },
                            color: Colors.white,
                            child: Text('Pengurangan', style: TextStyle(color: Colors.black)),
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

  void penjumlahan() {
    double number1 = double.tryParse(controller1.text) ?? 0;
    double number2 = double.tryParse(controller2.text) ?? 0;
    double hasil = number1 + number2;

    setState(() {
      result = hasil.toString();
    });
  }

  void pengurangan() {
    double number1 = double.tryParse(controller1.text) ?? 0;
    double number2 = double.tryParse(controller2.text) ?? 0;
    double hasil = number1 - number2;

    setState(() {
      result = hasil.toString();
    });
  }
}
