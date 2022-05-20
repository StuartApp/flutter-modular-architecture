import 'package:flutter/material.dart';

import '../intent_launcher.dart';
import '../inherited_intent_launcher.dart';

extension WidgetExtension on Widget {
  Widget wrapWith(IntentLauncher launcher) {
    return InheritedIntentLauncher(
      child: this,
      launcher: launcher,
    );
  }
}
