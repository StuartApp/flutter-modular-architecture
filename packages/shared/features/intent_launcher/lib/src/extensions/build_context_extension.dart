import 'package:flutter/material.dart';

import '../intent_launcher.dart';
import '../intents/navigation_intent.dart';

extension BuildContextExtension on BuildContext {
  Future<T?> go<T>(NavigationIntent intent) {
    return IntentLauncher.go(this, intent);
  }
}
