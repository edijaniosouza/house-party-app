import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:house_party/pages/home/home_controller.dart';

// Constrói uma barra inferior que permite acessar a tela de login ou cadastro
class BottomBarForLogin extends StatelessWidget {
  final HomeController _homeController = HomeController.getInstace;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        child: Row(
          // Centraliza e aplica um espaço entre os botões
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            // Inclui o botão de acesso a tela de login
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  tooltip: 'Acessar tela de login',
                  icon: FaIcon(FontAwesomeIcons.signInAlt),
                  onPressed: () {
                    _homeController.navigateToLoginPage(context);
                  },
                ),
                Text(
                  'Entrar',
                )
              ],
            ),
            // Inclui o botão de acesso a tela de cadastro
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  tooltip: 'Criar uma nova conta',
                  icon: FaIcon(FontAwesomeIcons.userPlus),
                  onPressed: () {
                    _homeController.navigateToRegisterPage(context);
                  },
                ),
                Text(
                  'Cadastrar',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
