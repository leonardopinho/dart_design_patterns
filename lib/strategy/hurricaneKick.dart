import 'interfaces/kickBehavior.dart';

class HurricaneKick implements KickBehavior {
  @override
  void kick() {
    print('This is a Hurricane Kick!');
  }
}