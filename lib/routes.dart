import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_page.dart';

import 'screens/splash_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const SplashPage(),
    '/quiz_page': (context) => const QuizPage(),
  };
}
