import 'package:DesignPattern/factory/currencyFactory.dart';
import 'package:DesignPattern/factory/currency.dart';
import 'package:test/test.dart';

void main() {
  test('should return the symbol and code by country', () {
    var currency = CurrencyFactory.currency(of: Country.Brazil);
    expect(currency.symbol(), 'R\$');
    currency = CurrencyFactory.currency(of: Country.UnitedStates);
    expect(currency.symbol(), '\$');
  });
}
