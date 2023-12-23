import 'package:flutter/material.dart';

// dependencies
import 'package:get/get.dart';

// constants
import 'package:bookly_app/constants.dart';

// core
import 'package:bookly_app/core/utilities/assetsData.dart';

// features
import 'package:bookly_app/features/splash/presentation/views/widgets/slideText.dart';
import 'package:bookly_app/features/home/presentation/views/homeView.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();

    initSlideAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 8),
        SlideText(slideAnimation: slideAnimation),
      ],
    );
  }

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      kDuration,
          () => Get.to(
            () => const HomeView(),
        duration: kDuration,
        transition: Transition.fade,
      ),
    );
  }
}
