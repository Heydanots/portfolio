import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'theme_toggle.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return header([
      div(classes: 'container', [
        div(classes: 'nav-container', [
          a(href: '#home', classes: 'logo', [
            .text('HDS'),
            span(styles: Styles(color: const Color('var(--accent)')), [.text('.')]),
          ]),
          nav([
            ul([
              li([
                a(href: '#projects', [.text('Projects')]),
              ]),
              li([
                a(href: '#services', [.text('Services')]),
              ]),
              li([
                a(href: '#tech', [.text('Stack')]),
              ]),
              li([
                a(href: '#contact', [.text('Contact')]),
              ]),
            ]),
          ]),
          const ThemeToggle(),
        ]),
      ]),
    ]);
  }
}
