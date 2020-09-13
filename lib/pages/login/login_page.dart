import 'package:flutter/material.dart';
import 'package:house_party/components/button_with_image.dart';
import 'package:house_party/components/input_text.dart';
import 'package:house_party/pages/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  final LoginController loginController = LoginController();
  
  @override
  LoginPageState createState() =>  LoginPageState();
}

class  LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
      ),

      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: constraints.maxHeight * 0.2,
              left: constraints.maxWidth * 0.08,
              right: constraints.maxWidth * 0.08
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: InputText(
                    widget.loginController.loginTextController,
                    label: 'Usuário',
                    hint: 'E-mail ou telefone',
                  )
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: InputText(
                    widget.loginController.passwordTextController,
                    label: 'Senha',
                    hint: 'Infome sua senha',
                    isHidden: true,
                  )
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ButtonWithImage('Conctar usando o Google', 'assets/images/google-account.png')
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ButtonWithImage('Conectar usando o Facebook', 'assets/images/facebook-account.png')
                ),

              ],
            ),
          ),
        )
      ),
    );
  }
}