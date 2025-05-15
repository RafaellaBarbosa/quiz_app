import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      initialRoute: '/',
      routes: AppRoutes.routes,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
