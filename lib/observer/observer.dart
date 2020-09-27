import 'package:DesignPattern/observer/abstractObserver.dart';
import 'package:DesignPattern/observer/observerItem.dart';

class Observer extends AbstractObserver {
  final List<ObserverItem> _listeners = <ObserverItem>[];

  Observer._privateConstructor();

  static final Observer _instance = Observer._privateConstructor();

  static Observer get instance => _instance;

  @override
  void registerObserver(dynamic state, Function function) {
    _listeners.add(ObserverItem(state, function));
  }

  @override
  void removeObserver(dynamic state) {
    _listeners.removeWhere((item) => item.state == state);
  }

  @override
  void notifyObserver(dynamic state, {dynamic value}) {
    _listeners.forEach((item) {
      if (item.state == state) {
        value != null ? item.function(value) : item.function();
      }
    });
  }
}
