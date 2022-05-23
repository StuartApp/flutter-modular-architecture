import 'package:flutter/material.dart';

import 'inherited_intent_launcher.dart';
import 'intent_launcher.dart';
import 'intent_not_registered_exception.dart';
import 'intents/navigation_intent.dart';

class IntentLauncherImpl implements IntentLauncher {
  final _navigationIntentHandlers = <Type, dynamic>{};

  static Future<T?> launchNavigationIntent<T>(
    BuildContext context,
    NavigationIntent navigationIntent,
  ) {
    final inherited =
        context.dependOnInheritedWidgetOfExactType<InheritedIntentLauncher>();
    assert(
        inherited != null,
        'No IntentLauncher found in context.\n'
        'Please use `wrapWith(IntentLauncher)` extension method.');
    return inherited!.launcher
        .handleNavigationIntent(context, navigationIntent);
  }

  @override
  void onNavigationIntent<T extends NavigationIntent>(
      NavigationIntentHandler<T> handler) {
    _navigationIntentHandlers[T] = handler;
  }

  @override
  Future<T?> handleNavigationIntent<T>(
    BuildContext context,
    NavigationIntent navigationIntent,
  ) {
    final handler = _navigationIntentHandlers[navigationIntent.runtimeType];
    if (handler != null) {
      return handler(context, navigationIntent) as Future<T?>;
    } else {
      throw IntentNotRegisteredException();
    }
  }
}
