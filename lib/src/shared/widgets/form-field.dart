import 'package:flutter/material.dart';

class FormFieldWidget extends StatefulWidget {
  final String label;
  final IconData iconData;
  final bool isSecret;

  FormFieldWidget(
      {@required this.label, @required this.iconData, this.isSecret = false});

  @override
  _FormFieldWidgetState createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  bool _secret;

  @override
  void initState() {
    super.initState();
    _secret = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _secret,
      decoration: InputDecoration(
        labelText: widget.label,
        prefixIcon: Icon(
          widget.iconData,
          color: Colors.white,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.0),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: Visibility(
          visible: widget.isSecret,
          child: GestureDetector(
            onTap: () => setState(() => _secret = !_secret),
            child: Icon(
              Icons.remove_red_eye,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
