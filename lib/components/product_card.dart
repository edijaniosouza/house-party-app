import 'package:flutter/material.dart';
import 'package:house_party/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product _product;

  const ProductCard({ Key key, @required Product product})
    : this._product = product, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 120,
                height: 120,
                child: this._product.image
              ),
              Text(
                this._product.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.remove_circle,
                      color: Colors.red[400],
                      size: 28,
                    ),
                    onPressed: () {},
                  ),
                  Text('0', style: TextStyle(fontSize: 28),),
                  IconButton(
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.green[400],
                      size: 28,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )
        ),
      )
    );
  }
}
