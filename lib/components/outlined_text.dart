import 'package:flutter/material.dart';

// Esse widget constrói um texto com suas bordas contronadas
class OutlinedText extends StatelessWidget {
  final String _text; // Texto
  final Color _outlineColor; // Cor da borda
  final double _fontSize; // Tamanho da fonte
  final Color _textColor; // Cor do texto
  final String _fontFamily; // Estilo de fonte
  
  OutlinedText(String text, {Color outlineColor, double fontSize, Color textColor, String fontFamily})
    : this._text = text,
    this._outlineColor = outlineColor?? Colors.black,
    this._fontSize = fontSize?? 16,
    this._textColor = textColor?? Colors.white,
    this._fontFamily = fontFamily?? 'BarlowSemiCondensed'
  ;

  @override
  Widget build(BuildContext context) {
    return Text(
      this._text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: this._fontSize,
        color: this._textColor,
        fontFamily: this._fontFamily,
        shadows: [

          // Aplica a borda no texto utilizando a classe Shadow
          Shadow(
            blurRadius: 5,
            color: this._outlineColor,
            offset: Offset(1, 1),
          ),
          Shadow(
            blurRadius: 5,
            color: this._outlineColor,
            offset: Offset(-1, -1),
          ),
        ],
        
      ),
    );
  }
}