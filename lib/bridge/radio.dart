import 'abstractTarget.dart';

class Radio extends AbstractTarget {
  @override
  String run() {
    return 'Radio turned on!';
  }

  @override
  String stop() {
    return 'Radio turned off!';
  }
}