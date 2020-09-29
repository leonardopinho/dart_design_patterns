void main(List<String> arguments) {
  FighterStrategy ranger = Ranger(SingleKick(), SinglePunch(), ShortJump());
  ranger.display();
  ranger.punch();
  ranger.jump();

  ranger.setJumpStrategy(LongJump());
  ranger.jump();

  ranger.setKickStrategy(HurricaneKick());
  ranger.kick();
}

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

abstract class KickBehavior {
  void kick();
}

abstract class PunchBehavior {
  void punch();
}

abstract class JumpBehavior {
  void jump();
}

class SinglePunch implements PunchBehavior {
  @override
  void punch() {
    print('This is a single punch');
  }
}

class ShortJump implements JumpBehavior {
  @override
  void jump() {
    print('This is a short jump');
  }
}

class LongJump implements JumpBehavior {
  @override
  void jump() {
    print('This is a long jump');
  }
}

class SingleKick implements KickBehavior {
  @override
  void kick() {
    print('This is a single kick!');
  }
}

class LightningKick implements KickBehavior {
  @override
  void kick() {
    print('This is a Lightning Kick!');
  }
}

class HurricaneKick implements KickBehavior {
  @override
  void kick() {
    print('This is a Hurricane Kick!');
  }
}

class Soldier extends FighterStrategy {
  Soldier(KickBehavior kickBehavior, PunchBehavior punchBehavior, JumpBehavior jumpBehavior)
      : super(kickBehavior, punchBehavior, jumpBehavior);

  @override
  void display() {
    print('I am a Soldier.');
  }
}

class Ranger extends FighterStrategy {
  Ranger(KickBehavior kickBehavior, PunchBehavior punchBehavior, JumpBehavior jumpBehavior)
      : super(kickBehavior, punchBehavior, jumpBehavior);

  @override
  void display() {
    print('I am a Ranger.');
  }
}
