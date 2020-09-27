import 'package:DesignPattern/observer/observer.dart';
import 'package:test/test.dart';

enum ObserverType { INIT }

void main() {
  test('should listen to observer event', () {
    var listener = Observer.instance;
    var listener2 = Observer.instance;
    var result1, result2;

    listener.registerObserver(ObserverType.INIT, (value) {
      result1 = value;
    });

    listener2.registerObserver(ObserverType.INIT, (value) {
      result2 = value;
    });

    listener.notifyObserver(ObserverType.INIT, value: 'message');

    listener.removeObserver(ObserverType.INIT);

    listener2.removeObserver(ObserverType.INIT);

    expect(result1, 'message');
    expect(result1, result2);
  });
}
