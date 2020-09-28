import 'package:DesignPattern/decorator/IceCreamDecorator.dart';
import 'package:DesignPattern/decorator/chocolateIceCream.dart';
import 'package:DesignPattern/decorator/peanutButterTopping.dart';
import 'package:DesignPattern/decorator/strawberryIceCream.dart';
import 'package:DesignPattern/decorator/toastedMarshmallowTopping.dart';
import 'package:test/test.dart';

void main() {
  test('should return the sum of the price applying the decorator', () {
    IceCreamDecorator iceCream = ChocolateIceCream(iceCream: null);
    expect(iceCream.getPrice(), 1.30);
    expect(iceCream.toString(), 'Chocolate');

    iceCream = StrawberryIceCream(iceCream: iceCream);
    expect(iceCream.getPrice(), 2.30);
    expect(iceCream.toString(), 'Chocolate, Strawberry');

    iceCream = PeanutButterTopping(iceCream: iceCream);
    expect(iceCream.getPrice(), 2.80);
    expect(iceCream.toString(), 'Chocolate, Strawberry, Peanut Butter Topping');

    iceCream = ToastedMarshmallowTopping(iceCream: iceCream);
    expect(iceCream.getPrice(), 3.55);
    expect(iceCream.toString(), 'Chocolate, Strawberry, Peanut Butter Topping, Toasted Marshmallow Topping');
  });
}
