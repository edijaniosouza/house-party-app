import 'package:flutter/material.dart';

class ButtonWithImage extends StatelessWidget {
  final String _label;
  final String _image;
  final Color _color;
  
  ButtonWithImage(String label, String image, {Color color})
  : this._label = label,
  this._image = image,
  this._color = color
  ;
  
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: this._color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Image(
              image: AssetImage(this._image),
              height: 40,
            ),
          ),
          Text(this._label)
        ],
      ),
      onPressed: () {},
    );
  }
}