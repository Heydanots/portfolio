import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'projects', [
      div(classes: 'container', [
        span(classes: 'section-label', [.text('Selected Work')]),
        h2(classes: 'section-title', [.text('Projects')]),
        div(classes: 'grid', [
          _projectCard(
            title: 'Finance Dashboard',
            stack: ['Flutter', 'Firebase', 'Clean Arch'],
            goal: 'Real-time asset tracking with complex data visualization.',
            status: 'Production',
          ),
          _projectCard(
            title: 'E-commerce Engine',
            stack: ['Dart', 'Jaspr', 'PostgreSQL'],
            goal: 'High-performance web storefront with SEO optimization.',
            status: 'In Progress',
          ),
          _projectCard(
            title: 'Health Matrix',
            stack: ['Flutter', 'SQLite', 'Deep Links'],
            goal: 'Native desktop application for medical data management.',
            status: 'Beta',
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
