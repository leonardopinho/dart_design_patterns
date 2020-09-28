import 'package:DesignPattern/decorator/IceCreamDecorator.dart';
import 'package:meta/meta.dart';

class StrawberryIceCream extends IceCreamDecorator {
  IceCreamDecorator iceCream;

  StrawberryIceCream({@required this.iceCream}) {
    name = 'Strawberry';
    price = 1.00;
  }

  @override
  double getPrice() {
    if (iceCream != null) {
      return super.getPrice() + iceCream.getPrice();
    }
    return super.getPrice();
  }

  @override
  String toString() {
    if (iceCream != null) return '${iceCream}, $name';
    return name;
  }
}
