import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'components/components.dart';
import 'pages/pages.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'main', [
      const Header(),
      const Home(),
    ]);
  }
}
