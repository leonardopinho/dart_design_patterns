import 'fighterStrategy.dart';
import 'interfaces/jumpBehavior.dart';
import 'interfaces/kickBehavior.dart';
import 'interfaces/punchBehavior.dart';

class Ranger extends FighterStrategy {
  Ranger(KickBehavior kickBehavior, PunchBehavior punchBehavior, JumpBehavior jumpBehavior)
      : super(kickBehavior, punchBehavior, jumpBehavior);

  @override
  void display() {
    print('I am a Ranger.');
  }
}
