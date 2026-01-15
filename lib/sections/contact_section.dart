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
          h2(classes: 'section-title', [.text('Let’s discuss your project')]),
          p([
            .text(
              'I am always open to new opportunities and interesting projects. Whether you are a startup, SME, or individual client, let’s build something great together.',
            ),
          ]),
          div(classes: 'contact-actions', [
            a(href: 'mailto:contact@example.com', classes: 'btn btn-primary', [.text('Send me an email')]),
            div(classes: 'social-links-big', [
              a(href: '#', [.text('LinkedIn')]),
              a(href: '#', [.text('GitHub')]),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}
