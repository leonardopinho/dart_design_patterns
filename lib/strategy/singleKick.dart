import 'interfaces/kickBehavior.dart';

class SingleKick implements KickBehavior {
  @override
  String kick() {
    return 'This is a single kick!';
  }
}