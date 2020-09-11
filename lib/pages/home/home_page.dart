import 'package:flutter/material.dart';
import 'package:house_party/components/bottom_bar_for_login.dart';
import 'package:house_party/components/outlined_text.dart';

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
        // Centraliza o conteudo da tela
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Texto da tela com contorno
          OutlinedText(
            'House\nParty',
            fontSize: 55,
            outlineColor: Colors.orange[900],
          ),

          Image(
            image: AssetImage('assets/images/caneca_baloes-vetor.png'),
            height: 350,
            width: 300,
          ),
        ],
      ),

      // Barra inferior para acesso ao login ou cadastro
      bottomNavigationBar: BottomBarForLogin(),
    );
  }
}