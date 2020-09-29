import 'package:DesignPattern/strategy/Ranger.dart';
import 'package:DesignPattern/strategy/fighterStrategy.dart';
import 'package:DesignPattern/strategy/hurricaneKick.dart';
import 'package:DesignPattern/strategy/longJump.dart';
import 'package:DesignPattern/strategy/shortJump.dart';
import 'package:DesignPattern/strategy/singleKick.dart';
import 'package:DesignPattern/strategy/singlePunch.dart';

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
