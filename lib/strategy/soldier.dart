import 'fighterStrategy.dart';
import 'interfaces/jumpBehavior.dart';
import 'interfaces/kickBehavior.dart';
import 'interfaces/punchBehavior.dart';

class Soldier extends FighterStrategy {
  Soldier(KickBehavior kickBehavior, PunchBehavior punchBehavior, JumpBehavior jumpBehavior)
      : super(kickBehavior, punchBehavior, jumpBehavior);

  @override
  String display() {
    return 'I am a Soldier.';
  }
}
