import 'package:flutter/material.dart';
import 'package:house_party/controller/home_controller.dart';
import 'package:house_party/house_party_icons.dart';

// Constrói uma barra inferior que permite acessar a tela de login ou cadastro
class BottomBarForLogin extends StatelessWidget {
  const BottomBarForLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.orange[300],
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
                  icon: Icon(HousePartyIcons.sign_in),
                  onPressed: () {
                    HomeController.navigateToLoginPage(context);
                  },
                ),
                Text(
                  'Entrar',
                )
              ],
            ),
            // Inclui o botão de acesso a tela de cadastro
            Column(
              children: [
                IconButton(
                  tooltip: 'Criar uma nova conta',
                  icon: Icon(HousePartyIcons.pencil),
                  onPressed: () {},
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
