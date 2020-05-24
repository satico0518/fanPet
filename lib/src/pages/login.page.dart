import 'package:fanpet/src/pages/change-password.page.dart';
import 'package:fanpet/src/pages/register.page.dart';
import 'package:fanpet/src/services/login.service.dart';
import 'package:fanpet/src/shared/widgets/background.dart';
import 'package:fanpet/src/shared/widgets/main-button.dart';
import 'package:fanpet/src/shared/widgets/title.dart';
import 'package:fanpet/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:fanpet/src/shared/widgets/form-field.dart';

class LoginPage extends StatelessWidget {
  static final String routeName = 'login';
  final LoginService loginService = new LoginService();

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
                Image.asset('assets/images/icon.png', height: 180,),
                TitleWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                        child: Column(
                          children: [
                            FormFieldWidget(
                              label: 'Email *',
                              iconData: Icons.alternate_email,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            FormFieldWidget(
                              label: 'Contraseña *',
                              iconData: Icons.vpn_key,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            MainButtonWidget(
                              text: 'INGRESAR',
                              onPressed: loginService.handleLogin('', ''),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                RegisterPage.routeName, (route) => false),
                        child: Text(
                          'Registrate',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                ChangePasswordPage.routeName, (route) => false),
                        child: Text(
                          'Olvidé mi contraseña',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
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
