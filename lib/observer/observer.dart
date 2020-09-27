import 'package:DesignPattern/observer/abstractObserver.dart';
import 'package:DesignPattern/observer/observerItem.dart';

class Observer extends AbstractObserver {
  final List<ObserverItem> _listeners = <ObserverItem>[];

  Observer._privateConstructor();

  static final Observer _instance = Observer._privateConstructor();

  static Observer get instance => _instance;

  @override
  void registerObserver(dynamic state, Function func) {
    _listeners.add(ObserverItem(state, func));
  }

  @override
  void removeObserver(dynamic state) {
    _listeners.removeWhere((item) => item.state == state);
  }

  @override
  void notifyObserver(dynamic state, {dynamic value}) {
    _listeners.forEach((item) {
      if (item.state == state) {
        if (value != null) {
          item.function(value);
        } else {
          item.function();
        }
      }
    });
  }
}