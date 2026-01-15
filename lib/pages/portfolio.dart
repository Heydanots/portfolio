import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Portfolio extends StatelessComponent {
  const Portfolio({super.key});

  @override
  Component build(BuildContext context) {
    return body(
      [
        header(
          [
            nav(
              [
                Link(to: '#1', child: .text('Accueil')),
                Link(to: '#2', child: .text('A propos de moi')),
              ],
            ),
          ],
        ),
        section([.text('text')]),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('header', [
      css('&').styles(
        display: .flex,
        justifyContent: .stretch,
        alignContent: AlignContent.spaceAround,
      ),
    ]),
  ];
}
