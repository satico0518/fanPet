class LoginService {
  static final LoginService _loginService = LoginService._internal();

  factory LoginService() {
    return _loginService;
  }

  LoginService._internal();

  handleLogin(String email, String password) {
    
  }
  
}