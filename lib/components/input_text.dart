import 'package:flutter/material.dart';

class InputText extends StatelessWidget {

  final TextEditingController _controller;
  final String _label;
  final String _hint;
  final TextInputType _keyboardType;
  final bool _isHidden;

  InputText(TextEditingController controller, {String label, String hint, TextInputType keyboardType, bool isHidden})
  : this._controller = controller,
  this._label = label,
  this._hint = hint,
  this._keyboardType = keyboardType,
  this._isHidden = isHidden ?? false
  ;
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this._controller,
      keyboardType: this._keyboardType,
      obscureText: _isHidden,
      decoration: InputDecoration(
        labelText: this._label,
        hintText: this._hint,
        border: OutlineInputBorder()
      ),
    );
  }
}