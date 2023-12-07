import 'package:flutter/material.dart';
import 'package:flutter_tutorial/second_page.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Page"),
           onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
           })
      )
    );
  }
}