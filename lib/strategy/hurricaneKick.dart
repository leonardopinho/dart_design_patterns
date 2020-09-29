import 'interfaces/kickBehavior.dart';

class HurricaneKick implements KickBehavior {
  @override
  String kick() {
    return 'This is a Hurricane Kick!';
  }
}
