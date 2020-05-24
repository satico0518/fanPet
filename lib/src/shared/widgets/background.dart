import 'package:fanpet/src/utils/utils.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  BackgroundWidget({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: getScreenSize(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroud.png'),
            fit: BoxFit.fill
            ),
        ),
        child: child,
      ),
    );
  }
}
