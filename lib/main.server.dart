/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

import 'package:jaspr/dom.dart';
// Server-specific Jaspr import.
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';
// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(
    Document(
      title: 'HDS',
      base: 'portfolio',
      styles: [
        css.import('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap'),
        css.import('styles.css'),
      ],
      head: [
        meta(
          name: 'description',
          content:
              'Portfolio de HDS, développeur Flutter spécialisé dans la création d’applications mobiles et web performantes avec Clean Architecture.',
        ),
        meta(name: 'author', content: 'Daniel OTSHUDIEMA'),
        meta(
          name: 'keywords',
          content: 'Flutter, Dart, Développeur, Portfolio, Mobile, Web, Clean Architecture, Jaspr',
        ),
        script(src: 'menu.js', attributes: {'defer': ''}),
      ],
      body: App(),
    ),
  );
}
