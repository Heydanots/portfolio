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
            title: 'Makuta Edufin',
            goal:
                'Makuta Edufin est une plateforme mobile dédiée à l’éducation financière en République Démocratique du Congo. Son objectif est de favoriser l’inclusion financière en offrant des parcours d’apprentissage interactifs, accessibles même hors-ligne, pour permettre aux utilisateurs de prendre des décisions financières autonomes et éclairées.',
            status: 'Production',
          ),
          _projectCard(
            title: 'Batela School',
            goal:
                "Batela School est une solution Fintech dédiée au secteur éducatif. J’ai travaillé sur le développement de fonctionnalités permettant une transparence totale entre l'école et les familles : suivi en temps réel des transactions, notifications intelligentes pour les échéances de paiement et accès simplifié aux états financiers de l'élève.",
            status: 'Production',
          ),
          _projectCard(
            title: 'Batela Dashboard',
            goal:
                "Un tableau de bord puissant pour les chefs d'entreprise et directeurs d'écoles. L'application offre une vue à 360° sur l'activité : ventes, stocks et paiements, le tout avec des données synchronisées en temps réel.",
            status: 'Production',
          ),
        ]),
      ]),
    ]);
  }

  Component _projectCard({
    required String title,
    required String goal,
    required String status,
    List<String> stack = const [],
    String? playStoreUrl,
    String? appStoreUrl,
    String? githubUrl,
    String? websiteUrl,
  }) {
    return div(classes: 'card project-card', [
      span(classes: 'status', [.text(status)]),
      h3([.text(title)]),
      p([.text(goal)]),
      div(classes: 'project-footer', [
        div(classes: 'tech-stack', [
          div(classes: 'tags', [
            for (var tech in stack) span(classes: 'tech-tag', [.text(tech)]),
          ]),
        ]),
        if (playStoreUrl != null || appStoreUrl != null || githubUrl != null || websiteUrl != null)
          div(classes: 'store-links', [
            if (githubUrl != null)
              a(href: githubUrl, target: Target.blank, classes: 'store-link', [
                img(src: 'https://cdn.simpleicons.org/github', width: 18, height: 18),
              ]),
            if (websiteUrl != null)
              a(href: websiteUrl, target: Target.blank, classes: 'store-link', [
                img(src: 'https://api.iconify.design/lucide/globe.svg', width: 18, height: 18),
              ]),
            if (playStoreUrl != null)
              a(href: playStoreUrl, target: Target.blank, classes: 'store-link', [
                img(src: 'https://cdn.simpleicons.org/googleplay', width: 18, height: 18),
              ]),
            if (appStoreUrl != null)
              a(href: appStoreUrl, target: Target.blank, classes: 'store-link', [
                img(src: 'https://cdn.simpleicons.org/apple', width: 18, height: 18),
              ]),
          ]),
      ]),
    ]);
  }
}
