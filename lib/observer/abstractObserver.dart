abstract class AbstractObserver {
  void registerObserver(dynamic state, Function function);

  void removeObserver(dynamic state);

  void notifyObserver(dynamic state, {dynamic value});
}
