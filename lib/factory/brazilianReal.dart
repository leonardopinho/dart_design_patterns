import 'package:DesignPattern/factory/currency.dart';

class BrazilianReal extends Currency {
  @override
  String symbol() {
    return 'R\$';
  }

  @override
  String code() {
    return 'BRL';
  }
}