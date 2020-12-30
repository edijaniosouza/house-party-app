import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputText extends StatelessWidget {

  final TextEditingController _controller;
  final String Function(String) _validator;
  final String _label;
  final String _hint;
  final TextInputType _keyboardType;
  final bool _isHidden;
  final double _horizontalMargin;
  final double _verticalMargin;
  final List<TextInputFormatter> _inputFormatter;
  final TextCapitalization _textCapitalization;
  final void Function() _onPress;

  InputText(
    TextEditingController controller,
    {
      String label,
      String hint,
      TextInputType keyboardType,
      bool isHidden,
      double horizontalMargin,
      double verticalMargin,
      TextInputFormatter mask,
      String Function(String) validator,
      TextCapitalization textCapitalization,
      void Function() onPress,
    }
  ): this._controller = controller,
  this._label = label,
  this._hint = hint,
  this._keyboardType = keyboardType,
  this._isHidden = isHidden ?? false,
  this._horizontalMargin = horizontalMargin ?? 0,
  this._verticalMargin = verticalMargin ?? 0,
  this._inputFormatter = mask == null ? null : [mask],
  this._validator = validator,
  this._textCapitalization = textCapitalization ?? TextCapitalization.none,
  this._onPress = onPress
  ;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: this._horizontalMargin,
        vertical: this._verticalMargin,
      ),
      child: TextFormField(
        textCapitalization: this._textCapitalization,
        style: TextStyle(
          color: Colors.white
        ),
        controller: this._controller,
        onTap: this._onPress,
        validator: this._validator,
        keyboardType: this._keyboardType,
        obscureText: _isHidden,
        inputFormatters: this._inputFormatter,
        decoration: InputDecoration(
          labelText: this._label,
          hintText: this._hint,
        ),
      ),
    );
  }
}
