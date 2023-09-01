import 'package:login_shared_preferences/controllers/prefs.dart';
class LoginController {
  final String _login;
  final String _password;

  LoginController(this._login, this._password);

  bool isValid(){
    if(_login == 'adm' && _password == '123'){
      PrefsService.save(_login);
      return true;
    }
    return false;
  }

}