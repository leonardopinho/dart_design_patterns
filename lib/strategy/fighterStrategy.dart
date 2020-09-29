import 'interfaces/jumpBehavior.dart';
import 'interfaces/kickBehavior.dart';
import 'interfaces/punchBehavior.dart';

abstract class FighterStrategy {
  KickBehavior kickBehavior;
  PunchBehavior punchBehavior;
  JumpBehavior jumpBehavior;

  FighterStrategy(this.kickBehavior, this.punchBehavior, this.jumpBehavior);

  String display();

  String kick() {
    return kickBehavior.kick();
  }

  String punch() {
    return punchBehavior.punch();
  }

  String jump() {
    return jumpBehavior.jump();
  }

  void setKickStrategy(KickBehavior kickBehavior) {
    this.kickBehavior = kickBehavior;
  }

  void setJumpStrategy(JumpBehavior jumpBehavior) {
    this.jumpBehavior = jumpBehavior;
  }

  void setPunchStrategy(PunchBehavior punchBehavior) {
    this.punchBehavior = punchBehavior;
  }
}
