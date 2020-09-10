import 'package:flutter/material.dart';
import 'package:house_party/house_party_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange[300],
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'HOUSE\nPARTY',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 5.0,
                  color: Colors.orange[900],
                  offset: Offset(1, 1),
                ),
                Shadow(
                  blurRadius: 5.0,
                  color: Colors.orange[900],
                  offset: Offset(1, 1),
                ),
              ],
              fontSize: 55,
              color: Colors.white,
              fontFamily: 'BarlowSemiCondensed'
            ),
          ),
          Image(
            image: AssetImage('assets/images/caneca_baloes-vetor.png'),
            height: 350,
            width: 300,
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.orange[300],
        child: Container(
          height: 65,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    tooltip: 'Acessar tela de login',
                    icon: Icon(HousePartyIcons.sign_in),
                    onPressed: () {},
                  ),
                  Text(
                    'Entrar',
                  )
                ],
              ),
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
      ),
    );
  }
}