import 'interfaces/punchBehavior.dart';

class SinglePunch implements PunchBehavior {
  @override
  void punch() {
    print('This is a single punch');
  }
}