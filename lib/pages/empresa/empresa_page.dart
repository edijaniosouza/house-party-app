import 'package:flutter/material.dart';
import 'package:house_party/components/bottom_bar_for_login.dart';
import 'package:house_party/components/outlined_text.dart';
import 'package:house_party/house_party.dart';

class EmpresaPage extends StatefulWidget {
  @override
  _EmpresaPageState createState() => _EmpresaPageState();
  }

class _EmpresaPageState extends State<EmpresaPage> {
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        title: OutlinedText("House Party",
        fontSize: 35,
        outlineColor: Colors.red[900],),
        centerTitle: true,
        backgroundColor: Colors.orange[300],  
      ),
      
      body: Column(
        // Centraliza o conteudo da tela
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          // Texto da tela com contorno
          //OutlinedText(
          //  'House\nParty',
          //  fontSize: 55,
          //  outlineColor: Colors.orange[900],
          //),
        //],
        
      ),

      // Barra inferior para acesso ao login ou cadastro
      //bottomNavigationBar: BottomBarForLogin();
    );
  }
}