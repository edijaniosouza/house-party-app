class Category {
  int _idCategory;
  String _description;

  Category(this._idCategory, this._description);

  Category.fromJson(Map<String, dynamic> json) {
    this._idCategory = json['id_categoria'];
    this._description = json['descricao'];
  }

  int get id => this._idCategory;
  String get description => this._description;

  Map<String, dynamic> toMap() {
    return {
      'id_categoria' : this._idCategory,
      'descricao' : this._description
    };
  }
}
