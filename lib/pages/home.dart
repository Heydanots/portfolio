import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../sections/hero_section.dart';
import '../sections/projects_section.dart';
import '../sections/services_section.dart';
import '../sections/tech_stack_section.dart';
import '../sections/contact_section.dart';
import '../sections/footer_section.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'home-page', [
      const HeroSection(),
      const ProjectsSection(),
      const ServicesSection(),
      const TechStackSection(),
      const ContactSection(),
      const FooterSection(),
    ]);
  }
}
