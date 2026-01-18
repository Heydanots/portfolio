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
          nav(id: 'main-nav', [
            ul([
              li([
                a(
                  href: '#projects',
                  attributes: {'onclick': 'closeMenu()'},
                  [.text('Projects')],
                ),
              ]),
              li([
                a(
                  href: '#services',
                  attributes: {'onclick': 'closeMenu()'},
                  [.text('Services')],
                ),
              ]),
              li([
                a(
                  href: '#tech',
                  attributes: {'onclick': 'closeMenu()'},
                  [.text('Stack')],
                ),
              ]),
              li([
                a(
                  href: '#contact',
                  attributes: {'onclick': 'closeMenu()'},
                  [.text('Contact')],
                ),
              ]),
            ]),
          ]),
          div(classes: 'header-actions', [
            const ThemeToggle(),
            button(
              id: 'hamburger',
              classes: 'hamburger',
              attributes: {
                'aria-label': 'Toggle menu',
                'onclick': 'toggleMenu()',
              },
              [
                span([]),
                span([]),
                span([]),
              ],
            ),
          ]),
        ]),
      ]),
    ]);
  }
}
