import 'package:DesignPattern/bridge/abstractSwitch.dart';
import 'package:DesignPattern/bridge/remoteControl.dart';
import 'package:DesignPattern/bridge/radio.dart';
import 'package:DesignPattern/bridge/tv.dart';
import 'package:test/test.dart';

void main() {
  test('should test the ability to control devices using the pattern bridge design', () {
    AbstractSwitch controllerTv = RemoteControl(target: TV());
    expect(controllerTv.turnOn(), 'TV turned on!');
    expect(controllerTv.turnOff(), 'TV turned off!');

    AbstractSwitch controllerRadio = RemoteControl(target: Radio());
    expect(controllerRadio.turnOn(), 'Radio turned on!');
    expect(controllerRadio.turnOff(), 'Radio turned off!');
  });
}
