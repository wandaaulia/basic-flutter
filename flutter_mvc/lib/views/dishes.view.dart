import 'package:flutter/material.dart';
import 'package:flutter_mvc/controllers/dishes/dishes.controller.dart';
import 'package:flutter_mvc/models/user_model.dart';
import 'package:flutter_mvc/services/post_result_model.dart';
import 'package:flutter_mvc/services/user.service.dart';
import 'package:flutter_mvc/views/home.view.dart';
import 'package:get/get.dart';



class Dishes extends StatefulWidget {
  @override
  _Dishes createState() => _Dishes();
}


class _Dishes extends State<Dishes> {
  // User? user = null;

  PostResult? postResult = null;


  User? user = null;

  var output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dishes")),
      body: ListView(children: [
        Row(
          children: [
              Center(
                child: Text("ini")),
                  Center(
                child: Text((postResult != null) ? "${postResult?.id}" : "Tidak ada")),
                  Center(
                child: Text((user != null) ? "${user?.name}" : "Tidak ada")),
                 
          ],
        ),
        ElevatedButton(onPressed: () {
         PostResult.connectToAPI("Badu", "Dokter").then((value) {postResult = value;
         setState((){});});
        }, child: Text("Post API")),
            ElevatedButton(onPressed: () {
        UserService.connectToAPI("2").then((value) {user = value;
         setState((){});});
        }, child: Text("Get API")),
         ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)),
          onPressed: () {
            UserService.getUsers("2").then((users) {
              output = "";

              for(int i = 0; i < users.length; i++) {
                output = output + "${users?[i].name}";
                setState(() {
                }); 
              }

            });},
          child: Text('Get Many Users'),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)),
          onPressed: () {
            Get.back(result: "ini dari page 2");
          },
          child: Text('back to home'),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: () {
          },
          child: Text('add value'),
        ),
          Center(
                child: Text((output != "") ? "${output}" : "Tidak ada")),
      ]),
    );
  }
}
