import 'package:fanpet/src/models/register.model.dart';
import 'package:fanpet/src/services/register.service.dart';
import 'package:fanpet/src/shared/widgets/back-arrow.dart';
import 'package:fanpet/src/shared/widgets/background.dart';
import 'package:fanpet/src/shared/widgets/form-field.dart';
import 'package:fanpet/src/shared/widgets/main-button.dart';
import 'package:fanpet/src/shared/widgets/title.dart';
import 'package:fanpet/src/utils/utils.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  static final String routeName = 'register';

  @override
  Widget build(BuildContext context) {
    final registerService = RegisterService();
    return Scaffold(
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: Container(
            height: getScreenSize(context).height - 50,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BackArrowWidget(),
                  Image.asset(
                    'assets/images/icon.png',
                    height: 120,
                  ),
                  TitleWidget(
                    marginTop: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Form(
                              child: Column(
                            children: [
                              FormFieldWidget(
                                label: 'Nombre y Apellido',
                                iconData: Icons.person,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FormFieldWidget(
                                label: 'Celular',
                                iconData: Icons.phone_android,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FormFieldWidget(
                                label: 'Correo',
                                iconData: Icons.alternate_email,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FormFieldWidget(
                                label: 'Contraseña',
                                iconData: Icons.vpn_key,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              MainButtonWidget(
                                text: 'ENVIAR',
                                onPressed: registerService
                                    .handleRegister(RegisterModel()),
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
