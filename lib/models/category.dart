class Category {
  final int _idCategory;
  final String _description;

  Category(this._idCategory, this._description);

  get getDescription => this._description;
  get getId => this._idCategory;
}