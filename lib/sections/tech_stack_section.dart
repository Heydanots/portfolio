import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TechStackSection extends StatelessComponent {
  const TechStackSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'tech', classes: 'tech-section', [
      div(classes: 'container', [
        div(classes: 'tech-header', [
          span(classes: 'section-label', [.text('Expertise technique')]),
          h2(classes: 'section-title', [.text('Mon Stack Technologique')]),
          p(classes: 'section-description', [
            .text('Des outils modernes pour bâtir des solutions robustes, évolutives et centrées sur l’utilisateur.'),
          ]),
        ]),
        div(classes: 'tech-categories', [
          _techCategory(
            title: 'Développement Mobile',
            description: 'Création d’applications natives performantes cross-platform.',
            items: [
              ('Flutter', 'flutter'),
              ('Dart', 'dart'),
            ],
          ),
          _techCategory(
            title: 'Backend & Data',
            description: 'Infrastructures solides pour la gestion et le flux de données.',
            items: [
              ('PostgreSQL', 'postgresql'),
              ('Firebase', 'firebase'),
              ('SQLite', 'sqlite'),
              ('Appwrite', 'appwrite'),
              ('MySQL', 'mysql'),
            ],
          ),
          _techCategory(
            title: 'DevOps & Outils',
            description: 'Automatisation et déploiement continu pour une qualité constante.',
            items: [
              ('Docker', 'docker'),
              ('Git', 'git'),
              ('GitHub Actions', 'githubactions'),
            ],
          ),
        ]),
      ]),
    ]);
  }

  Component _techCategory({
    required String title,
    required String description,
    required List<(String, String)> items,
  }) {
    return div(classes: 'tech-category-card', [
      h3([.text(title)]),
      p([.text(description)]),
      div(classes: 'category-items', [
        for (var item in items) _techBadge(item.$1, item.$2),
      ]),
    ]);
  }

  Component _techBadge(String name, String slug) {
    final Map<String, String> variants = {
      'firebase': 'plain',
      'githubactions': 'original',
      'flutter': 'original',
      'dart': 'original',
      'git': 'original',
      'postgresql': 'original',
      'docker': 'original',
      'sqlite': 'original',
    };

    final variant = variants[slug] ?? 'original';
    final iconUrl = 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/$slug/$slug-$variant.svg';

    return div(classes: 'tech-badge', [
      img(
        src: iconUrl,
        alt: name,
        classes: 'badge-icon',
        width: 24,
        height: 24,
        loading: MediaLoading.lazy,
      ),
      span([.text(name)]),
    ]);
  }
}
