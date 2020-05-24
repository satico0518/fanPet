import 'package:fanpet/src/pages/login.page.dart';
import 'package:fanpet/src/pages/register.page.dart';
import 'package:fanpet/src/services/slides.service.dart';
import 'package:fanpet/src/shared/widgets/main-button.dart';
import 'package:fanpet/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SlidesPage extends StatelessWidget {
  final SlideService slideSrvc = SlideService();
  static final String routeName = 'slides';

  SlidesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            height: getScreenSize(context).height,
            child: Swiper(
              itemCount: slideSrvc.slides.length,
              pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(activeColor: Theme.of(context).primaryColor),
                margin: EdgeInsets.only(bottom: 90),
                alignment: Alignment.bottomCenter,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: slideSrvc.slides[index],
                );
              },
            ),
          ),
          Positioned(
            top: 60,
            right: 30,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(LoginPage.routeName),
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: MainButtonWidget(
                text: 'REGISTRARME',
                onPressed: () =>
                    Navigator.of(context).pushNamed(RegisterPage.routeName),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
