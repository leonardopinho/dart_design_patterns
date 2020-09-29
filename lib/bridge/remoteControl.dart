import 'package:meta/meta.dart';
import 'abstractSwitch.dart';
import 'abstractTarget.dart';

class RemoteControl extends AbstractSwitch {
  RemoteControl({@required AbstractTarget target}) : super(target: target);

  @override
  String turnOff() {
    return target.stop();
  }

  @override
  String turnOn() {
    return target.run();
  }
}