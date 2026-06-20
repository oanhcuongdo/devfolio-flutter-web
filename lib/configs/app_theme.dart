import 'package:flutter/material.dart';

import 'app_core_theme.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    shadowSub: Colors.black12,
    primary: Colors.blueAccent,
    primaryLight: Colors.blueAccent.withAlpha(100),
    textSub: const Color(0xff1d1d1f),
    textSub2: const Color(0xff86868b),
  );

  static AppCoreTheme light = _core.copyWith(
    background: const Color(0xfffbfbfd),
    backgroundSub: Colors.white,
    scaffold: const Color(0xfffbfbfd),
    scaffoldDark: const Color(0xfff5f5f7),
    text: const Color(0xff1d1d1f),
    textSub2: const Color(0xff86868b),
  );

  static AppCoreTheme dark = _core.copyWith(
    background: const Color(0xff000000),
    backgroundSub: const Color(0xff1d1d1f),
    scaffold: const Color(0xff000000),
    text: const Color(0xfff5f5f7),
    textSub2: const Color(0xff86868b),
  );

  static AppCoreTheme? c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }

  static bool isDark(BuildContext context) => Theme.of(context).brightness == Brightness.dark;
}
