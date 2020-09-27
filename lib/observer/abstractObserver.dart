abstract class AbstractObserver {
  void notifyObserver(dynamic state, {dynamic value});

  void registerObserver(dynamic state, Function func);

  void removeObserver(dynamic state);
}