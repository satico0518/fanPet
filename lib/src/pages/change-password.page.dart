import 'package:fanpet/src/shared/widgets/back-arrow.dart';
import 'package:fanpet/src/shared/widgets/background.dart';
import 'package:fanpet/src/shared/widgets/form-field.dart';
import 'package:fanpet/src/shared/widgets/main-button.dart';
import 'package:fanpet/src/shared/widgets/title.dart';
import 'package:fanpet/src/utils/utils.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  static final String routeName = 'changepassword';
  const ChangePasswordPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: Container(
            height: getScreenSize(context).height - 50,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BackArrowWidget(),
                  Image.asset(
                    'assets/images/icon.png',
                    height: 180,
                  ),
                TitleWidget(),
                Form(
                  child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        FormFieldWidget(
                          label: 'Ingresa la nueva contraseña',
                          iconData: Icons.vpn_key,
                          isSecret: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MainButtonWidget(text: 'CAMBIAR', onPressed: () {})
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
