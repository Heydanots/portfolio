import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'home', classes: 'hero', [
      div(classes: 'container', [
        h1([
          .text('Développeur Flutter – '),
          br(),
          span(classes: 'accent-text', [.text('Clean Architecture & UI Moderne')]),
        ]),
        p([
          .text(
            '3 ans d’expérience professionnelle dans la création d’écosystèmes numériques cohérents sur Mobile, Web et Desktop.',
          ),
        ]),
        div(classes: 'cta-group', [
          a(href: 'mailto:danots70@gmail.com', classes: 'btn btn-primary', [.text('Me contacter')]),
          a(href: 'media/Daniel_OTSHUDIEMA_CV.pdf',
              classes: 'btn btn-secondary',
              download: 'CV.pdf',
              [.text('Télécharger le CV')]),
        ]),
      ]),
    ]);
  }
}
