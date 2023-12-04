import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:models/core/service/url.dart';
import 'package:models/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:models/preferences/token_prefs.dart';
import 'dart:convert';

class AuthProvider extends ChangeNotifier {
  User? model;
  String message = '';
  String? phoneNumber;
  String? username;
  String? email;
  String? password;
  DateTime? date;
  bool? isLoading;

  var registerURL = Uri.parse(APIUrl.registerURL);
  var loginURL = Uri.parse(APIUrl.loginURL);

  Future<void> register(User user, BuildContext context) async {
    try {
      final request = await http.post(
        registerURL,
        body: jsonEncode(user.toJson()),
      );
      final response = json.decode(request.body);

      print(response);

      if (response.statusCode == 200) {
        isLoading = true;

        await SharedPreferencesManager.setToken(response['token']);
        context.go('/main');
        notifyListeners();
      } else {
        isLoading = false;
        showSnackBar(context, response['message']);
        notifyListeners();
      }
      notifyListeners();
    } catch (e) {
      showSnackBar(context, e.toString());
      throw Exception(e);
    }
  }

  void setUser(User user) {
    model = user;
    notifyListeners();
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
