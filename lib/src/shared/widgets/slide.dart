import 'package:fanpet/src/models/slide.model.dart';
import 'package:fanpet/src/shared/widgets/background.dart';
import 'package:fanpet/src/shared/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideWidget extends StatelessWidget {
  final SlideModel slideData;

  SlideWidget({Key key, @required this.slideData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Image.asset(
              slideData.img,
              fit: BoxFit.scaleDown,
              height: slideData.imgHeight,
            ),
          ),
          TitleWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Text(
              slideData.text,
              style: GoogleFonts.acme(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
