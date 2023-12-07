import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "ini adalah Text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Anonymous Method"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            message,
          ),
          ElevatedButton(
            child: Text("Tekan Saya"),
            onPressed: () {
              setState(() {
                message = "Tombol sudah ditekan";
              });
            },
          )
        ],
      )),
    ));
  }
}
