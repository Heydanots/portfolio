import 'dart:html' as html;

abstract class ThemeHelper {
  static String? getTheme() {
    return html.window.localStorage['theme'];
  }

  static void setTheme(String theme) {
    html.document.documentElement?.dataset['theme'] = theme;
    html.window.localStorage['theme'] = theme;
  }

  static bool prefersDark() {
    return html.window.matchMedia('(prefers-color-scheme: dark)').matches;
  }
}
