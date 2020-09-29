import 'abstractTarget.dart';
import 'package:meta/meta.dart';

abstract class AbstractSwitch {
  final AbstractTarget target;

  AbstractSwitch({@required this.target});

  String turnOn();

  String turnOff();
}