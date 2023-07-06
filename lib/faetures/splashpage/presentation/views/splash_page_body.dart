import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/core/routing.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/homepage.dart';

import 'package:bookly_app/faetures/splashpage/presentation/views/widgets/animation_refactor.dart';
import 'package:flutter/material.dart';


class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody>
    with TickerProviderStateMixin {
  late AnimationController aanimationController;
  late Animation<Offset> sliding;

  @override
  void initState() {
    initAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    aanimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          Assets.logo,
          width: 200,
          height: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        SlidingAnimationWithBuilder(
          sliding: sliding,
          child: const Text('Bookly App',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 23,
                  fontFamily: 'Poppins'),
              textAlign: TextAlign.center),
        ),
        const SizedBox(
          height: 50,
        ),
        SlidingAnimationWithBuilder(
            sliding: sliding,
            child: const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 7,
              backgroundColor: Color.fromARGB(255, 240, 78, 66),
            )))
      ],
    );
  }

  void initAnimation() {
    aanimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    sliding = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(aanimationController);
    aanimationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, Routes.homeRoute);
      },
    );
  }
}
