import 'interfaces/jumpBehavior.dart';
import 'interfaces/kickBehavior.dart';
import 'interfaces/punchBehavior.dart';

abstract class FighterStrategy {
  KickBehavior kickBehavior;
  PunchBehavior punchBehavior;
  JumpBehavior jumpBehavior;

  FighterStrategy(this.kickBehavior, this.punchBehavior, this.jumpBehavior);

  void display();

  void kick() {
    kickBehavior.kick();
  }

  void punch() {
    punchBehavior.punch();
  }

  void jump() {
    jumpBehavior.jump();
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
