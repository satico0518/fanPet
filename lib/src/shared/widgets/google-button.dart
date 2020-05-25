import 'package:flutter/material.dart';

class ThirdPartyButton extends StatelessWidget {
  final String logo;
  final String text;
  final Function onPressed;

  ThirdPartyButton({@required this.logo, @required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Theme.of(context).primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage(logo), height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
