import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TechStackSection extends StatelessComponent {
  const TechStackSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'tech', [
      div(classes: 'container', [
        span(classes: 'section-label', [.text('Expertise')]),
        h2(classes: 'section-title', [.text('Tech Stack')]),
        div(classes: 'tech-grid', [
          _techItem('Flutter', 'flutter'),
          _techItem('Dart', 'dart'),
          _techItem('Firebase', 'firebase'),
          _techItem('Git', 'git'),
          _techItem('CI/CD', 'githubactions'),
          _techItem('PostgreSQL', 'postgresql'),
          _techItem('Docker', 'docker'),
        ]),
      ]),
    ]);
  }

  Component _techItem(String name, String slug) {
    // Map of special cases for devicon paths
    final Map<String, String> variants = {
      'firebase': 'plain',
      'githubactions': 'original',
      'flutter': 'original',
      'dart': 'original',
      'git': 'original',
      'postgresql': 'original',
      'docker': 'original',
    };

    final variant = variants[slug] ?? 'original';
    final iconUrl = 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/$slug/$slug-$variant.svg';

    return div(classes: 'tech-item', [
      img(
        src: iconUrl,
        alt: name,
        classes: 'tech-icon',
        width: 40,
        height: 40,
        loading: MediaLoading.lazy,
      ),
      span([.text(name)]),
    ]);
  }
}
