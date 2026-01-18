import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'projects', [
      div(classes: 'container', [
        span(classes: 'section-label', [.text('Sélection de projets')]),
        h2(classes: 'section-title', [.text('Projets')]),
        div(classes: 'grid', [
          _projectCard(
            title: 'Tableau de bord financier',
            stack: ['Flutter', 'Firebase', 'Clean Arch'],
            goal: 'Suivi d’actifs en temps réel avec visualisation de données complexes.',
            status: 'Production',
          ),
          _projectCard(
            title: 'Moteur E-commerce',
            stack: ['Dart', 'Jaspr', 'PostgreSQL'],
            goal: 'Boutique en ligne haute performance avec optimisation SEO.',
            status: 'En cours',
          ),
          _projectCard(
            title: 'Health Matrix',
            stack: ['Flutter', 'SQLite', 'Deep Links'],
            goal: 'Application de bureau native pour la gestion de données médicales.',
            status: 'Bêta',
          ),
        ]),
      ]),
    ]);
  }

  Component _projectCard({
    required String title,
    required List<String> stack,
    required String goal,
    required String status,
  }) {
    return div(classes: 'card project-card', [
      span(classes: 'status', [.text(status)]),
      h3([.text(title)]),
      p([.text(goal)]),
      div(classes: 'tech-stack', [
        div(classes: 'tags', [
          for (var tech in stack) span(classes: 'tech-tag', [.text(tech)]),
        ]),
      ]),
    ]);
  }
}
