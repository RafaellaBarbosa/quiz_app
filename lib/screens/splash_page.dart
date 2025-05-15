// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceInOut,
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 4), () async {
      if (context.mounted) {
        await Navigator.of(context).pushReplacementNamed('/quiz_page');
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkPassion,
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            "assets/images/quiz.png",
            height: 400,
            width: 400,
          ),
        ),
      ),
    );
  }
}
