import 'dart:convert';
import 'package:fanpet/src/models/login.model.dart';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel extends LoginModel{
    String name;
    String cellphone;

    RegisterModel({
        this.name,
        this.cellphone,
        email,
        password
    }): super(email: email, password: password);

    factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        email: json["email"],
        password: json["password"],
        name: json["name"],
        cellphone: json["cellphone"]
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "name": name,
        "cellphone": cellphone
    };
}
