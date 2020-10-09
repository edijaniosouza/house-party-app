import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterUserController {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final MaskTextInputFormatter _cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  final MaskTextInputFormatter _phoneMask = MaskTextInputFormatter(mask: '(##)#####-####');

  static RegisterUserController _instance = RegisterUserController._();
  final TextEditingController nameInputController = TextEditingController();
  final TextEditingController surnameInputController = TextEditingController();
  final TextEditingController emailInputController = TextEditingController();
  final TextEditingController passwordInputController = TextEditingController();
  final TextEditingController repeatPasswordInputController = TextEditingController();
  final TextEditingController streetAddressInputController = TextEditingController();
  final TextEditingController numberAddressInputController = TextEditingController();
  final TextEditingController neighborhoodAddressInputController = TextEditingController();
  final TextEditingController stateAddressInputController = TextEditingController();
  final TextEditingController complementAddressInputController = TextEditingController();
  final TextEditingController numberPhoneInputController = TextEditingController();
  final TextEditingController cpfInputController = TextEditingController();
  String city;
  DateTime _birthday;


  RegisterUserController._();
  static get instance => _instance;

  MaskTextInputFormatter get cpfMask => this._cpfMask;
  MaskTextInputFormatter get phoneMask => this._phoneMask;

  get getBirthday => this._birthday;
  void setBirthday(DateTime birthday) {
    this._birthday = birthday;
  }

  //Validações do formulário
  String validateName(String name) {
    return name.isEmpty ? 'Informe seu nome'
        : name.length <= 1 ? 'Informe um nome valido'
        : null
    ;
  }

  String validateSurname(String surname) {
    return surname.isEmpty ? 'Informe seu sobrenome'
        : surname.length <= 1 ? 'Informe um sobrenome valido'
        : null
    ;
  }

  String validateCPF(String cpf) {

    try {

      int.parse(cpf);
    } catch (error) {
      debugPrint('Error: ${error.toString()}');
      return 'CPF deve ser numérico';
    }
    return cpf.length != 11
      ? 'CPF invalido'
      : null
    ;
  }

  String validateEmail(String email) {
    return email.isEmpty ? 'Informe seu e-mail'
        : !email.contains('@') && !email.contains('.')
        ? 'Informe um e-mail valido'
        : null
    ;
  }

  String validatePhone(String phone) {
    return phone.isEmpty
        ? 'Informe seu número de celular'
        : phone.length != 11 ? 'Informe um número de celular válido'
        : null
    ;
  }

  String validatePassword(String password, String confirmPassword) {
    if(password != confirmPassword) {
      return 'Senhas não conferem';
    } else if(password.length < 6) {
      return 'Senha deve ter no minímo 6 caracteres';
    } else {
      return null;
    }
  }

}