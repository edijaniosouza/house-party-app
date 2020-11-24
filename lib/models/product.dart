import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:house_party/models/category.dart';
import 'package:house_party/models/provider.dart';

class Product {
  int _id;
  String _description;
  String _ean;
  Provider _provider;
  double _price;
  Category _category;
  Image _image;

  Product(this._id, this._description, this._category, this._price, this._provider, this._ean, this._image);

  Product.fromJson(Map<String, dynamic> json) {
    this._id = json['id_produto'];
    this._description = json['descricao'];
    this._ean = json['ean'];
    this._category = Category.fromJson(json['categoria']);
    this._image = !json['imagemProduto'].isEmpty ?
      Image.memory(base64Decode(json['imagemProduto']))
      : Image.asset('assets/images/caneca_baloes-vetor.png');
  }

  int get id => this._id;
  String get description => this._description;
  String get ean => this._ean;
  double get price => this._price;
  Provider get provider => this._provider;
  Category get category => this._category;
  Image get image => this._image;

  Map<String, dynamic> toMap() {
    return {
      'ean'
      'descicao' : this._description,
      'categoria' : this._category.toMap(),
      'imagem' : base64Encode(this._image.toString().codeUnits)
    };
  }
}
