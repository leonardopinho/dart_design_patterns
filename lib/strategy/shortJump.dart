import 'interfaces/jumpBehavior.dart';

class ShortJump implements JumpBehavior {
  @override
  void jump() {
    print('This is a short jump');
  }
}