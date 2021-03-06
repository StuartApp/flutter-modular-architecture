import 'package:flutter/material.dart';

import 'intent_launcher_impl.dart';
import 'intents/navigation_intent.dart';

typedef NavigationIntentHandler<T> = Future<dynamic> Function(
    BuildContext context, T intent);

abstract class IntentLauncher {
  factory IntentLauncher() {
    return IntentLauncherImpl();
  }

  static Future<T?> go<T>(
      BuildContext context, NavigationIntent navigationIntent) {
    return IntentLauncherImpl.launchNavigationIntent(context, navigationIntent);
  }

  void onNavigationIntent<T extends NavigationIntent>(
      NavigationIntentHandler<T> handler);

  @protected
  Future<T?> handleNavigationIntent<T>(
    BuildContext context,
    NavigationIntent navigationIntent,
  );
}
