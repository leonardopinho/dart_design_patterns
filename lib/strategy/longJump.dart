import 'interfaces/jumpBehavior.dart';

class LongJump implements JumpBehavior {
  @override
  String jump() {
    return 'This is a long jump';
  }
}