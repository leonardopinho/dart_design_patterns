import 'package:DesignPattern/factory/unitedStateDollar.dart';
import 'package:DesignPattern/factory/brazilianReal.dart';
import 'package:DesignPattern/factory/currency.dart';
import 'package:DesignPattern/factory/euro.dart';
import 'package:meta/meta.dart';

class CurrencyFactory {
  static Currency currency({@required Country of}) {
    var result;
    switch (of) {
      case Country.Brazil:
        result = BrazilianReal();
        break;
      case Country.UnitedStates:
        result = UnitedStateDollar();
        break;
      case Country.Spain:
        result = Euro();
        break;
      case Country.Portugal:
        result = Euro();
        break;
    }
    return result;
  }
}