import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trip/constants/appColors.dart';
import 'package:trip/constants/utils/size_config.dart';
import 'package:trip/modules/trip/veiw/trip_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: MyColors.whiteColor,
      child: AnimatedSplashScreen(
          duration: 3000,
          centered: true,
          splashIconSize: 500,
          animationDuration: const Duration(seconds: 3),
          splash: Column(
            children: [
              Transform.scale(
                scale: 0.9,
                child: Image.asset(
                  'assets/images/trip.png',
                  fit: BoxFit.fill,
                ),
              ),
              Transform.scale(
                scale: 0.5,
                child: LinearProgressIndicator(
                  minHeight: getHeight(7),
                  backgroundColor: MyColors.whiteColor,
                  color: MyColors.blueColor,
                ),
              ),
            ],
          ),
          nextScreen: TripScreen(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Colors.transparent),
    );
  }
}
