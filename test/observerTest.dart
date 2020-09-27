import 'package:DesignPattern/observer/observer.dart';
import 'package:test/test.dart';

enum ObserverType { INIT }

void main() {
  test('should listen to observer event', () {

    var observer = Observer.instance;
    var result;

    observer.registerObserver(ObserverType.INIT, (value){
      if(value != null){
        result = value;
      }
    });

    observer.notifyObserver(ObserverType.INIT, value: 'message');

    observer.removeObserver(ObserverType.INIT);

    expect(result, 'message');

  });
}