class Category {
  int _idCategory;
  String _description;

  Category(this._idCategory, this._description);

  Category.fromJson(Map<String, dynamic> json) {
    this._idCategory = json['id_categoria'];
    this._description = json['descricao'];
  }

  get description => this._description;
  get id => this._idCategory;
}
