import 'package:flutter/material.dart';
import 'package:projek_1/informasi.dart';

class login extends StatefulWidget {
  static String tag = 'login';

  @override
  State createState() => loginState();
}

class loginState extends State<login>
    with SingleTickerProviderStateMixin {

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  String pesan = '';

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
                              "Login",
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                          TextFormField(
                            controller: controller1,
                            decoration:
                            InputDecoration(labelText: "Masukkan Username"),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            controller: controller2,
                            decoration:
                            InputDecoration(labelText: "Masukkan Password"),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                          ),
                          MaterialButton(
                            minWidth: 200.0,
                            height: 42.0,
                            onPressed: () {
                              verifikasi();
                            },
                            color: Colors.white,
                            child: Text('Login', style: TextStyle(color: Colors.black)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                          ),
                          Text(
                            pesan,
                            style: TextStyle(fontSize: 13, color: Colors.red),
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

  void verifikasi() {
    String username = controller1.text;
    String password = controller2.text;

    if (username == '123210060' && password == '123') {
      Navigator.of(context).pushNamed(informasi.tag);
    } else {
      setState(() {
        pesan = 'Login gagal. Username atau password salah.';
      });
    }
  }
}
