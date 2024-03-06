import 'package:flutter/material.dart';

class gallery extends StatefulWidget {
  static String tag = 'gallery';

  @override
  State createState() => galleryState();
}

class galleryState extends State<gallery>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    // Scaffold is structure to define app bar and stuff
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 2, 75),
      appBar: AppBar(
        title: Text("Tugas Pertemuan 2"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget> [
          Image.asset("img/messi2.jpg"),
          Image.asset("img/messi.jpg"),
          Image.asset("img/ronaldo2.jpg"),
          Image.asset("img/ronaldo.jpg"),
        ],
      )
    );
  }
}