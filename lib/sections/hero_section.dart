import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'home', classes: 'hero', [
      div(classes: 'container', [
        h1([
          .text('Flutter Developer – '),
          br(),
          span(classes: 'accent-text', [.text('Clean Architecture & Modern UI')]),
        ]),
        p([
          .text(
            '3 years professional experience building consistent digital ecosystems across Mobile, Web, and Desktop.',
          ),
        ]),
        div(classes: 'cta-group', [
          a(href: 'mailto:contact@example.com', classes: 'btn btn-primary', [.text('Contact me')]),
          a(href: '#', classes: 'btn btn-secondary', [.text('Download CV')]),
        ]),
      ]),
    ]);
  }
}
