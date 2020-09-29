import 'interfaces/kickBehavior.dart';

class SingleKick implements KickBehavior {
  @override
  void kick() {
    print('This is a single kick!');
  }
}