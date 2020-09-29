import 'package:flutter/material.dart';
import 'package:house_party/components/outlined_text.dart';
import 'package:house_party/components/input_text.dart';
import 'package:house_party/pages/company/register_company_controller.dart';

class RegisterCompanyPage extends StatefulWidget{
  final RegisterCompanyController companyController = RegisterCompanyController();

  @override
  RegisterCompanyPageState createState() => RegisterCompanyPageState();
}

class  RegisterCompanyPageState extends State<RegisterCompanyPage> {
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: OutlinedText("House Party",
        fontSize: 35,
        outlineColor: Colors.red[900],),
        centerTitle: true,
        backgroundColor: Colors.orange[300],  
      ),
      body:LayoutBuilder(
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
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Dados da Empresa',
                    textScaleFactor: 2,
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: InputText(
                    widget.companyController.nameInputController,
                    label: 'Nome da Empresa',
                    hint: 'Nome Fantasia',
                  )
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: InputText(
                    widget.companyController.phoneNumberInputController,
                    label: 'Telefone da Empresa',
                    hint: 'Para possíveis contatos',
                    keyboardType: TextInputType.number,
                  )
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: InputText(
                    widget.companyController.cnpjInputController,
                    label: 'CNPJ',
                    hint: 'Com pontos, traços e "/"',
                  )
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: InputText(
                    widget.companyController.eventsInputController,
                    label: 'Eventos que atende',
                    hint: 'Separar com vírgulas',
                  )
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: constraints.maxWidth,
                    height: 48,
                    child: RaisedButton(
                      child: Text('Cadastrar'),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),

    );
  }
}