import 'package:flutter/material.dart';

// features
import 'package:bookly_app/features/splash/presentation/views/widgets/splashViewBody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
