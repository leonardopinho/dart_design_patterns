import 'interfaces/punchBehavior.dart';

class SinglePunch implements PunchBehavior {
  @override
  String punch() {
    return 'This is a single punch';
  }
}