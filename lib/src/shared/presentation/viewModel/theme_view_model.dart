

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/storage/app_shared_prefs.dart';



class DarkModeNotifier extends StateNotifier<bool> {

  late SharedPreferences prefs;

  Future _init() async {

    prefs=await SharedPreferences.getInstance();
    var darkMode = AppSharedPrefs(prefs).getIsDarkTheme();
    state = darkMode;
  }

  DarkModeNotifier() : super(false) {
    _init();
  }
  void toggle() {
    state = !state;
    AppSharedPrefs(prefs).setDarkTheme(state);
  }
}

final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>(
      (ref) => DarkModeNotifier(),
);