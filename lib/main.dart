import 'package:fanpet/src/pages/change-password.page.dart';
import 'package:fanpet/src/pages/login.page.dart';
import 'package:fanpet/src/pages/register.page.dart';
import 'package:fanpet/src/pages/slides.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

ThemeData buildTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
    primaryColor: Color.fromRGBO(212, 175, 55, 1.0),
    accentColor: Colors.orangeAccent,
    secondaryHeaderColor: Color.fromRGBO(212, 175, 55, 1.0),
    hintColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.white, fontSize: 18.0),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FanPet',
      initialRoute: SlidesPage.routeName,
      routes: {
        LoginPage.routeName: (BuildContext context) => LoginPage(),
        SlidesPage.routeName: (BuildContext context) => SlidesPage(),
        RegisterPage.routeName: (BuildContext context) => RegisterPage(),
        ChangePasswordPage.routeName: (BuildContext context) => ChangePasswordPage(),
      },
      theme: buildTheme(),
    );
  }
}
