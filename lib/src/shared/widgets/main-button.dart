import 'package:fanpet/src/utils/utils.dart';
import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final String text;
  final Function onPressed;

  const MainButtonWidget({Key key, @required this.text, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50,
      minWidth: getScreenSize(context).width / 1.3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Theme.of(context).primaryColor)
        ),
      child: RaisedButton(        
        elevation: 50,
        color: Color.fromRGBO(0, 0, 0, 0.1),
        onPressed: onPressed,        
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
