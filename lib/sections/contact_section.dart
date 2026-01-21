import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'contact', [
      div(classes: 'container', [
        div(classes: 'contact-box', [
          span(classes: 'section-label', [.text('Contact')]),
          h2(classes: 'section-title', [.text('Discutons de votre projet')]),
          p([
            .text(
              'Je suis toujours ouvert aux nouvelles opportunités et aux projets intéressants. Que vous soyez une startup, une PME ou un client individuel, construisons quelque chose de grand ensemble.',
            ),
          ]),
          div(classes: 'contact-actions', [
            a(href: 'mailto:danots70@gmail.com', classes: 'btn btn-primary', [.text('Envoyez-moi un e-mail')]),
            // div(classes: 'social-links-big', [
            //   a(href: '#', [.text('LinkedIn')]),
            //   a(href: '#', [.text('GitHub')]),
            // ]),
          ]),
        ]),
      ]),
    ]);
  }
}
