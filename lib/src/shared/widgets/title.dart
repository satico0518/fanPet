import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  final double marginTop;

  TitleWidget({this.marginTop = 0});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: marginTop),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          'FanPet',
          style: GoogleFonts.acme(color: Theme.of(context).primaryColor, fontSize: 50),
        ),
      ),
    );
  }
}
