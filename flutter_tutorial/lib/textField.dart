

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Text Field")),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                // Input Decoration
                decoration: InputDecoration(
                  // fill color
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  icon: Icon(Icons.adb),
                  // prefix bisa diisi apa aja sebagai widget
                  suffix: Container(width: 5, height: 5, color: Colors.red),
                  // icon di dalam input 
                  prefixIcon: Icon(Icons.person),
                  prefixText: "Name: ",
                  prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                  labelText: "Nama Lengkap",
                  // hintText kayak placeholder
                  hintText: "Nama lengkapnya lho ...",
                  hintStyle: TextStyle(fontSize: 12),
                  // Outline Input Border
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
                maxLength: 5,
                onChanged: (value) {
                  setState(() {    
                  });
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        )
      )
    );
  }
}