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
            stack: ['Flutter'],
            goal:
                'Makuta Edufin est une plateforme mobile dédiée à l’éducation financière en République Démocratique du Congo. Son objectif est de favoriser l’inclusion financière en offrant des parcours d’apprentissage interactifs, accessibles même hors-ligne, pour permettre aux utilisateurs de prendre des décisions financières autonomes et éclairées.',
            status: 'Production',
            playStoreUrl: 'https://play.google.com/store/apps/details?id=com.evolverdc.makuta&hl=fr',
            appStoreUrl: 'https://apps.apple.com/ug/app/makuta-edufin/id6479453841',
          ),
          _projectCard(
            title: 'Batela School',
            stack: ['Flutter'],
            goal:
                "Batela School est une solution Fintech dédiée au secteur éducatif. J’ai travaillé sur le développement de fonctionnalités permettant une transparence totale entre l'école et les familles : suivi en temps réel des transactions, notifications intelligentes pour les échéances de paiement et accès simplifié aux états financiers de l'élève.",
            status: 'Production',
          ),
          _projectCard(
            title: 'Batela Dashboard',
            stack: ['Flutter'],
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
    required List<String> stack,
    required String goal,
    required String status,
    String? playStoreUrl,
    String? appStoreUrl,
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
        if (playStoreUrl != null || appStoreUrl != null)
          div(classes: 'store-links', [
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
