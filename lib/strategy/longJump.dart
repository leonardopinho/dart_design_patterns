import 'interfaces/jumpBehavior.dart';

class LongJump implements JumpBehavior {
  @override
  void jump() {
    print('This is a long jump');
  }
}