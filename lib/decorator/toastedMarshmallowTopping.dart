import 'package:DesignPattern/decorator/IceCreamDecorator.dart';
import 'package:meta/meta.dart';

class ToastedMarshmallowTopping extends IceCreamDecorator {
  IceCreamDecorator iceCream;

  ToastedMarshmallowTopping({@required this.iceCream})
      : assert(iceCream != null) {
    price = 0.75;
  }

  @override
  double getPrice() {
    return super.getPrice() + iceCream.getPrice();
  }

  @override
  String toString() {
    return '${iceCream}, Toasted Marshmallow Topping';
  }
}
