import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
class PrefsService {
  static const String _key = 'key';

  static save(bool userView) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool(_key, userView);
  }

  
  static Future<bool> isAuth() async {
    var prefs = await SharedPreferences.getInstance();
    var resultado = prefs.getBool(_key);
    if (resultado != null) {
      
      print('usuario autenticado $resultado ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
      
      return resultado;
      }
      print('Não autenticado ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
      return false;
  }
  static logout() async{
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}