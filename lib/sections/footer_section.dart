import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    return footer([
      div(classes: 'container', [
        div(classes: 'footer-content', [
          p([.text('© 2026 Developed with ❤️ using Dart & Jaspr.')]),
          div(classes: 'social-links', [
            a(href: '#', [.text('GitHub')]),
            a(href: '#', [.text('LinkedIn')]),
            a(href: '#', [.text('Twitter')]),
          ]),
        ]),
      ]),
    ]);
  }
}
