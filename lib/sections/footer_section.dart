import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    return footer([
      div(classes: 'container', [
        div(classes: 'footer-content', [
          div([
            a(href: 'https://jaspr.site', target: Target.blank, [JasprBadge.light()]),
            p([.text('© 2026 Développé avec ❤️ via Dart & Jaspr.')]),
          ]),
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
