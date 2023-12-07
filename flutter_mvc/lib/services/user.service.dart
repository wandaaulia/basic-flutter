


import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_mvc/models/user_model.dart';

class UserService {


    static Future<User> connectToAPI(String id) async {
    String apiURL = "https://reqres.in/api/users/" + id ;

    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonObject = jsonDecode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }


  static Future<List<User>> getUsers(String page) async {
      String apiURL = "https://reqres.in/api/users?page=" +page;

   List<User> users = [];

      try {

      var apiResult = await http.get(Uri.parse(apiURL));

      if (apiResult.statusCode == 200) {
        var jsonObject = jsonDecode(apiResult.body);

        List<dynamic> listUser = (jsonObject as Map<String, dynamic>)["data"];


      for(int i = 0; i < listUser.length; i++) {
        users.add(User.createUser(listUser[i]));
      }
    } 
    return users;
    } catch(Exc) {
      throw Exception(Exc);
    }

  }
}