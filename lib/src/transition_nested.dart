library statemachine.transition.nested;

import 'package:statemachine/src/machine.dart';
import 'package:statemachine/src/transition.dart';

/// A transition that triggers a nested state machine.
class NestedTransition extends Transition {
  /// The nested state machine.
  final Machine machine;

  NestedTransition(this.machine);

  @override
  void activate() => machine.start();

  @override
  void deactivate() => machine.stop();
}
