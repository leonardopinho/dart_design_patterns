import 'interfaces/kickBehavior.dart';

class LightningKick implements KickBehavior {
  @override
  String kick() {
    return 'This is a Lightning Kick!';
  }
}