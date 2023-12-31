import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart'as http;

class AuthProvider with ChangeNotifier{
bool isLoding = false;
bool hasError = false;
String? errorMassage;

void login(String username, String password) async {
    isLoding = true;
    hasError = false;
    notifyListeners();
    http.Response response = await http.post(Uri.parse("https://fakestoreapi.com/auth/login"),
    body: {
      "username": username,
      "password": password,
    }
    );
    if(response.statusCode == 200){
      print(response.body);
    }else{
      hasError = true;
      errorMassage = "Login Faild";
      notifyListeners();
    }
    isLoding = false;
    notifyListeners();
}
}