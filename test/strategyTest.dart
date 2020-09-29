import 'package:DesignPattern/strategy/Ranger.dart';
import 'package:DesignPattern/strategy/fighterStrategy.dart';
import 'package:DesignPattern/strategy/hurricaneKick.dart';
import 'package:DesignPattern/strategy/longJump.dart';
import 'package:DesignPattern/strategy/shortJump.dart';
import 'package:DesignPattern/strategy/singleKick.dart';
import 'package:DesignPattern/strategy/singlePunch.dart';
import 'package:test/test.dart';

void main() {
  test('should test the characters ability to change the strategy of kicks, jumps and punches', () {
    FighterStrategy ranger = Ranger(SingleKick(), SinglePunch(), ShortJump());
    ranger.display();
    ranger.jump();

    ranger.setJumpStrategy(LongJump());
    ranger.jump();

    ranger.setKickStrategy(HurricaneKick());
    ranger.kick();

    //TODO: add assert
  });
}
