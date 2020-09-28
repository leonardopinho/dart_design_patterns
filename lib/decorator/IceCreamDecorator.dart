class IceCreamDecorator {
  String _name;
  double _price;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  String getName() {
    return _name;
  }

  double getPrice() {
    return price;
  }
}
