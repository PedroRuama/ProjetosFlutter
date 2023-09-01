import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
class PrefsService {
  static const String _key = 'key';

  static save(String user) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(_key, jsonEncode({"user":user, "isAuth":true}));
  }

  
  static Future<bool> isAuth() async {
    var prefs = await SharedPreferences.getInstance();
    var jsonResult = prefs.getString(_key);
    if (jsonResult != null) {
      var mapUser = jsonDecode(jsonResult);
      print('usuario autenticado $jsonResult ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
      
      return mapUser['isAuth'];
      }
      print('Não autenticado ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
      return false;
  }
  static logout() async{
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}