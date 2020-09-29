import 'interfaces/jumpBehavior.dart';

class ShortJump implements JumpBehavior {
  @override
  String jump() {
    return 'This is a short jump';
  }
}