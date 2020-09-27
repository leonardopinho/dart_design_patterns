import 'package:DesignPattern/observer/observer.dart';

void main(List<String> arguments) {
  //#region Observer
  observerTest();
  //#endregion
}

//#region Observer
enum ObserverType { INIT, NEW }

void observerTest() {
  var a = A();
  var b = B();

  var observer = Observer.instance;
  observer.notifyObserver(ObserverType.INIT, value: 'message');
  observer.removeObserver(ObserverType.INIT);
}

class A {
  A() {
    var observer = Observer.instance;
    observer.registerObserver(ObserverType.INIT, printTest);
  }

  void printTest(value) {
    print('Class A');
    print(value);
  }
}

class B {
  B() {
    var observer = Observer.instance;
    observer.registerObserver(ObserverType.INIT, printTest);
  }

  void printTest(value) {
    print('Class B');
    print(value);
  }
}
//#endregion
