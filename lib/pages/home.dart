import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/sections/sections.dart';

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
