import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ServicesSection extends StatelessComponent {
  const ServicesSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'services', classes: 'bg-secondary-layer', [
      div(classes: 'container', [
        span(classes: 'section-label', [.text('Spécialisations')]),
        h2(classes: 'section-title', [.text('Services')]),
        div(classes: 'grid', [
          _serviceCard(
            'Développement Flutter',
            'Création d’applications multiplateformes fluides pour iOS, Android et Desktop.',
          ),
          _serviceCard(
            'UI/UX Mobile',
            'Conception d’interfaces centrées sur l’utilisateur avec un focus sur la performance et l’interaction.',
          ),
          _serviceCard(
            'Refactorisation de Code',
            'Optimisation des bases de code existantes pour une meilleure maintenabilité et évolutivité.',
          ),
          // _serviceCard(
          //   'Conseil Technique',
          //   'Accompagnement des équipes dans les choix d’architecture et de technologies.',
          // ),
        ]),
      ]),
    ]);
  }

  Component _serviceCard(String title, String description) {
    return div(classes: 'card service-card', [
      h3([.text(title)]),
      p([.text(description)]),
    ]);
  }
}
