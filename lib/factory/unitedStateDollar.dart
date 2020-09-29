import 'package:DesignPattern/factory/currency.dart';

class UnitedStateDollar extends Currency {
  @override
  String symbol() {
    return '\$';
  }

  @override
  String code() {
    return 'USD';
  }
}