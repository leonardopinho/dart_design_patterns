import 'interfaces/kickBehavior.dart';

class LightningKick implements KickBehavior {
  @override
  void kick() {
    print('This is a Lightning Kick!');
  }
}