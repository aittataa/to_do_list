import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:to_do_list/app/config/app_constant.dart';

import '../../../config/app_theme.dart';
import '../views/home_view.dart';
import '../widgets/bounce_point.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: BouncePoint(size: 60),
      nextScreen: HomeView(),
      curve: AppConstant.curve,
      backgroundColor: AppTheme.primaryBackColor,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      animationDuration: AppConstant.durationSplash,
    );
  }
}
