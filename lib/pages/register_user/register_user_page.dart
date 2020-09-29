
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:house_party/components/input_text.dart';
import 'package:house_party/components/outlined_text.dart';
import 'package:house_party/pages/register_user/register_user_controller.dart';

class RegisterUserPage extends StatefulWidget {
  @override
  _RegisterUserPageState createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  RegisterUserController _registerController = RegisterUserController.getInstance;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        centerTitle: true,
        title: OutlinedText(
          'House Party',
          fontSize: 24,
        ),
      ),

      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(8),

            child: Column(
              children: [

                InputText(
                  this._registerController.nameInputController,
                  label: 'Nome',
                  hint: 'Informe seu nome',
                  horizontalMargin: 8,
                  verticalMargin: 8,
                ),

                InputText(
                  this._registerController.surnameInputController,
                  label: 'Sobrenome',
                  hint: 'Informe seu sobrenome',
                  horizontalMargin: 8,
                  verticalMargin: 8,
                ),

                SizedBox(
                  width: constraint.maxWidth - 32,
                  child: RaisedButton(
                    child: Text(
                      this._registerController.getBirthday == null ?
                      'Data de nascimento' :
                      formatDate(this._registerController.getBirthday, [dd, '/', mm, '/', yyyy])
                    ),
                    onPressed: () async {
                      _registerController.setBirthday(
                        await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now()
                        )
                      );
                      setState(() {});
                    },
                  ),
                ),

                InputText(
                  this._registerController.emailInputController,
                  label: 'E-mail',
                  hint: 'exemplo@houseparty.com',
                  keyboardType: TextInputType.emailAddress,
                  horizontalMargin: 8,
                  verticalMargin: 8,
                ),

                InputText(
                  this._registerController.passwordInputController,
                  label: 'Senha',
                  hint: 'Informe sua senha',
                  isHidden: true,
                  horizontalMargin: 8,
                  verticalMargin: 8,
                ),

                InputText(
                  this._registerController.repeatPasswordInputController,
                  label: 'Confirme a senha',
                  hint: 'Repita a senha',
                  isHidden: true,
                  horizontalMargin: 8,
                  verticalMargin: 8,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: constraint.maxWidth * 0.7,
                        child: InputText(
                          this._registerController.streetAddressInputController,
                          label: 'Logradouro',
                          hint: 'Rua Vergueiro',
                        ),
                      ),

                      SizedBox(
                        width: constraint.maxWidth * 0.2,
                        child: InputText(
                          this._registerController.numberAddressInputController,
                          label: 'Número',
                          hint: '831',
                        ),
                      ),
                    ],
                  ),
                ),

                InputText(
                  this._registerController.neighborhoodAddressInputController,
                  label: 'Bairro',
                  hint: 'Liberdade',
                  horizontalMargin: 8,
                  verticalMargin: 8,
                ),

                DropdownButton(
                  value: this._registerController.city,
                  onChanged: (value) {
                    this._registerController.city = value;
                    setState(() {});
                  },
                  items: [
                    DropdownMenuItem(
                      child: Text('São Paulo'),
                      value: 'São Paulo',
                    ),
                    DropdownMenuItem(
                      child: Text('Rio de Janeiro'),
                      value: 'Rio de Janeiro',
                    ),
                    DropdownMenuItem(
                      child: Text('São Caetano'),
                      value: 'São Caetano',
                    ),
                  ],
                ),

                SizedBox(
                  width: constraint.maxWidth - 32,
                  child: RaisedButton(
                    child: Text(
                      'Cadastrar'
                    ),
                    onPressed: () {},
                  ),
                ),

              ],
            ),
          );
        }
      ),
      
    );
  }
}