import 'package:DesignPattern/decorator/IceCreamDecorator.dart';
import 'package:meta/meta.dart';

class PeanutButterTopping extends IceCreamDecorator {
  IceCreamDecorator iceCream;

  PeanutButterTopping({@required this.iceCream}) : assert(iceCream != null) {
    price = 0.50;
  }

  @override
  double getPrice() {
    return super.getPrice() + iceCream.getPrice();
  }

  @override
  String toString() {
    return '${iceCream}, Peanut Butter Topping';
  }
}
