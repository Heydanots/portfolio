import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ServicesSection extends StatelessComponent {
  const ServicesSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'services', classes: 'bg-secondary-layer', [
      div(classes: 'container', [
        span(classes: 'section-label', [.text('Specialization')]),
        h2(classes: 'section-title', [.text('Services')]),
        div(classes: 'grid', [
          _serviceCard(
            'Flutter Development',
            'Building seamless cross-platform applications for iOS, Android, and Desktop.',
          ),
          _serviceCard(
            'UI/UX Mobile',
            'User-centric interface design with a focus on performance and fluid interactions.',
          ),
          _serviceCard('Code Refactoring', 'Optimizing existing codebases for better maintainability and scalability.'),
          _serviceCard(
            'Technical Consulting',
            'Guiding teams through architectural decisions and tech stack selection.',
          ),
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
