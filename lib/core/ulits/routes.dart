
import 'package:flutter/cupertino.dart';
import 'package:shopapp/featurs/onBoarding/OnBordingScreen.dart';

import '../../featurs/Login/LoginPage.dart';

class Routes {
  static const String home = '/home';
  static const String bookingStatus = '/bookingStatus';
  static const String splash = '/splash';
  static const String onBoarding = '/onBoarding';
  static const String about = '/AboutPage';
  static const String editAbout = '/EditAbout';
  static const String login = '/login';
  static const String mainScreen = '/mainScreen';
  static const String hotels = '/hotels';

  static Map<String, WidgetBuilder> get routes {
    return {
      onBoarding: (context) => const OnBoardingScreen(),
      login: (context) => const Login(),

    };
  }}