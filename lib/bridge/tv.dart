import 'abstractTarget.dart';

class TV extends AbstractTarget {
  @override
  String run() {
    return 'TV turned on!';
  }

  @override
  String stop() {
    return 'TV turned off!';
  }
}
