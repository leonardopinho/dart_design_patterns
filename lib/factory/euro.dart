import 'package:DesignPattern/factory/currency.dart';

class Euro extends Currency {
  @override
  String symbol() {
    return '€';
  }

  @override
  String code() {
    return 'EUR';
  }
}
