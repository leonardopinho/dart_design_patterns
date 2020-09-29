import 'package:DesignPattern/strategy/ranger.dart';
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
    expect(ranger.display(), 'I am a Ranger.');
    expect(ranger.jump(), 'This is a short jump');

    ranger.setJumpStrategy(LongJump());
    expect(ranger.jump(), 'This is a long jump');

    ranger.setKickStrategy(HurricaneKick());
    expect(ranger.kick(), 'This is a Hurricane Kick!');
  });
}
