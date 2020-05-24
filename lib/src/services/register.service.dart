import 'package:fanpet/src/models/register.model.dart';

class RegisterService {
    static final RegisterService _registerService = RegisterService._internal();

  factory RegisterService() {
    return _registerService;
  }

  RegisterService._internal();

  handleRegister(RegisterModel model) {
    
  }
}