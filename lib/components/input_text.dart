import 'package:flutter/material.dart';

class InputText extends StatelessWidget {

  final TextEditingController _controller;
  final String _label;
  final String _hint;
  final TextInputType _keyboardType;
  final bool _isHidden;
  final double _horizontalMargin;
  final double _verticalMargin;

  InputText(
    TextEditingController controller,
    {
      String label,
      String hint,
      TextInputType keyboardType,
      bool isHidden,
      double horizontalMargin,
      double verticalMargin,

    }
  ): this._controller = controller,
  this._label = label,
  this._hint = hint,
  this._keyboardType = keyboardType,
  this._isHidden = isHidden ?? false,
  this._horizontalMargin = horizontalMargin ?? 0,
  this._verticalMargin = verticalMargin ?? 0
  ;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: this._horizontalMargin,
        vertical: this._verticalMargin,
      ),
      child: TextField(
        controller: this._controller,
        keyboardType: this._keyboardType,
        obscureText: _isHidden,
        decoration: InputDecoration(
          labelText: this._label,
          hintText: this._hint,
          border: OutlineInputBorder()
        ),
      ),
    );
  }
}