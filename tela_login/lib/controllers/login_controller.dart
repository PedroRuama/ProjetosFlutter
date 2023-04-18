class LoginController{
  final String _telefone;
  final String _senha;
  LoginController(this._telefone, this._senha);
  bool isValidLogin(){
    return _telefone == "123" && _senha == "123";
  }
}