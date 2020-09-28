import 'package:DesignPattern/decorator/IceCreamDecorator.dart';
import 'package:meta/meta.dart';

class ChocolateIceCream extends IceCreamDecorator {
  IceCreamDecorator iceCream;

  ChocolateIceCream({@required this.iceCream}) {
    name = 'Chocolate';
    price = 1.30;
  }

  @override
  double getPrice() {
    if(iceCream != null) {
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
