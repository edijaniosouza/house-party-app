
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:house_party/components/input_text.dart';
import 'package:house_party/components/outlined_text.dart';
import 'package:house_party/pages/register_user/register_user_controller.dart';
import 'package:house_party/components/input_text_form.dart';

class RegisterUserPage extends StatefulWidget {
  @override
  _RegisterUserPageState createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  RegisterUserController _registerController = RegisterUserController.instance;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
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

            child: Form(
              key: _registerController.formKey,
              child: Column(
                children: [

                  InputTextForm(
                    this._registerController.nameInputController,
                    label: 'Nome',
                    hint: 'Informe seu nome',
                    horizontalMargin: 8,
                    verticalMargin: 8,
                    validate: (value) {
                      return this._registerController.validateName(value);
                    }
                  ),

                  InputTextForm(
                    this._registerController.surnameInputController,
                    label: 'Sobrenome',
                    hint: 'Informe seu sobrenome',
                    horizontalMargin: 8,
                    verticalMargin: 8,
                    validate: (value) {
                      return this._registerController.validateSurname(value);
                    },
                  ),

                  InputTextForm(
                    this._registerController.cpfInputController,
                    label: 'CPF',
                    hint: '000.000.000-00',
                    mask: _registerController.cpfMask,
                    keyboardType: TextInputType.number,
                    horizontalMargin: 8,
                    verticalMargin: 8,
                    validate: (value) {
                      String cpf = this._registerController.cpfMask.getUnmaskedText();
                      return this._registerController.validateCPF(cpf);
                    },
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

                  InputTextForm(
                    this._registerController.numberPhoneInputController,
                    label: 'Celular',
                    hint: '(11)99999-9999',
                    keyboardType: TextInputType.phone,
                    mask: this._registerController.phoneMask,
                    horizontalMargin: 8,
                    verticalMargin: 8,
                    validate: (value) {
                      String phone = this._registerController.phoneMask.getUnmaskedText();
                      return this._registerController.validatePhone(phone);
                    }
                  ),

                  InputTextForm(
                    this._registerController.emailInputController,
                    label: 'E-mail',
                    hint: 'exemplo@houseparty.com',
                    keyboardType: TextInputType.emailAddress,
                    horizontalMargin: 8,
                    verticalMargin: 8,
                    validate: (value) {
                      return this._registerController.validateEmail(value);
                    },
                  ),

                  InputTextForm(
                    this._registerController.passwordInputController,
                    label: 'Senha',
                    hint: 'Informe sua senha',
                    isHidden: true,
                    horizontalMargin: 8,
                    verticalMargin: 8,
                    validate: (value) {
                      return this._registerController.validatePassword(value, this._registerController.repeatPasswordInputController.text);
                    },
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
                          child: InputTextForm(
                            this._registerController.streetAddressInputController,
                            label: 'Logradouro',
                            hint: 'Rua Vergueiro',
                            validate: (value) => value.length < 2 || value.isEmpty ? 'Informe o logradouro' : null,
                          ),
                        ),

                        SizedBox(
                          width: constraint.maxWidth * 0.2,
                          child: InputTextForm(
                            this._registerController.numberAddressInputController,
                            label: 'Número',
                            hint: '831',
                            keyboardType: TextInputType.number,
                            validate: (value) => value.length < 3 || value.isEmpty ? 'Informe o número' : null,
                          ),
                        ),
                      ],
                    ),
                  ),

                  InputText(
                    this._registerController.complementAddressInputController,
                    label: 'Complemento',
                    hint: 'Apto, casa 1, fundos...',
                    horizontalMargin: 8,
                    verticalMargin: 8,
                  ),

                  InputTextForm(
                    this._registerController.neighborhoodAddressInputController,
                    label: 'Bairro',
                    hint: 'Liberdade',
                    horizontalMargin: 8,
                    verticalMargin: 8,
                    validate: (value) => value.length < 2 || value.isEmpty ? 'Informe o logradouro' : null,
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
                      onPressed: () {
                        if(this._registerController.formKey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Enviando',
                                textAlign: TextAlign.center,
                              ),
                            )
                          );
                        } else {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Verifique seus dados',
                                textAlign: TextAlign.center,
                              ),
                            )
                          );
                        }
                      },
                    ),
                  ),

                ],
              ),
            ),
          );
        }
      ),
      
    );
  }
}