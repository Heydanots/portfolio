import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'theme_helper.dart';

@client
class ThemeToggle extends StatefulComponent {
  const ThemeToggle({super.key});

  @override
  State<ThemeToggle> createState() => ThemeToggleState();
}

class ThemeToggleState extends State<ThemeToggle> {
  bool isDark = false;

  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      final theme = ThemeHelper.getTheme();
      isDark = theme == 'dark' || (theme == null && ThemeHelper.prefersDark());
      if (theme != null) {
        ThemeHelper.setTheme(theme);
      }
    }
  }

  void _toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
    _updateTheme();
  }

  void _updateTheme() {
    if (kIsWeb) {
      final theme = isDark ? 'dark' : 'light';
      ThemeHelper.setTheme(theme);
    }
  }

  @override
  Component build(BuildContext context) {
    return button(
      classes: 'theme-toggle',
      events: {'click': (e) => _toggleTheme()},
      [
            .text(isDark ? '☀️' : '🌙'),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.theme-toggle', [
      css('&').styles(
        padding: .all(8.px),
        border: .none,
        radius: .all(.circular(8.px)),
        cursor: .pointer,
        transition: const Transition('background-color', duration: Duration(milliseconds: 200)),
        fontSize: 1.25.rem,
        backgroundColor: Colors.transparent,
      ),
      css('&:hover').styles(
        backgroundColor: const Color('var(--bg-secondary)'),
      ),
    ]),
  ];
}
