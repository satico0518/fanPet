import 'package:fanpet/src/pages/login.page.dart';
import 'package:flutter/material.dart';

class BackArrowWidget extends StatelessWidget {
  const BackArrowWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 0, horizontal: 20).copyWith(bottom: 0),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () =>
              Navigator.of(context).popAndPushNamed(LoginPage.routeName),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
