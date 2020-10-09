import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputTextForm extends StatelessWidget {

  final TextEditingController _controller;
  final String _label;
  final String _hint;
  final TextInputType _keyboardType;
  final bool _isHidden;
  final double _horizontalMargin;
  final double _verticalMargin;
  final List<TextInputFormatter> _inputFormatter;
  final String Function(String) _validate;

  InputTextForm(
      TextEditingController controller,
      {
        String label,
        String hint,
        TextInputType keyboardType,
        bool isHidden,
        double horizontalMargin,
        double verticalMargin,
        MaskTextInputFormatter mask,
        @required String Function(String value)validate
      }
      ): this._validate = validate,
        this._controller = controller,
        this._label = label,
        this._hint = hint,
        this._keyboardType = keyboardType,
        this._isHidden = isHidden ?? false,
        this._horizontalMargin = horizontalMargin ?? 0,
        this._verticalMargin = verticalMargin ?? 0,
        this._inputFormatter = mask == null ? null : [mask]
  ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: this._horizontalMargin,
        vertical: this._verticalMargin,
      ),
      child: TextFormField(
        validator: this._validate,
        controller: this._controller,
        keyboardType: this._keyboardType,
        obscureText: _isHidden,
        inputFormatters: this._inputFormatter,
        decoration: InputDecoration(
            labelText: this._label,
            hintText: this._hint,
            border: OutlineInputBorder()
        ),
      ),
    );
  }
}