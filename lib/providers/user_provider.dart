import 'package:flutter/services.dart';
import 'package:flutter_provider/models/model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class UserProvider {
  final String _dataPath = "assets/users.json";

  List<User> users = [];

  Future<String> loadAsset() async {
    return await Future.delayed(const Duration(seconds: 2), () async {
      return await rootBundle.loadString(_dataPath);
    });
  }

  Future<List<User>> loadUserData() async {
    var dataString = await loadAsset();
    Map<String, dynamic> jsonUserData = jsonDecode(dataString);
    users = UserList.fromJson(jsonUserData['users']).users;
    return users;
  }

  Future<List<User>> loadUserDataFromJsonPlaceholder() async {
    const url = 'https://jsonplaceholder.typicode.com/users';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> jsonUserData = jsonDecode(response.body);
      users = UserList.fromJson(jsonUserData).users;
      return users;
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
