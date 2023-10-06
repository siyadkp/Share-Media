import 'package:flutter/material.dart';
import 'package:share_meadia/view/login/screen_login.dart';
import 'package:share_meadia/view/register/screen_register.dart';
import 'package:share_meadia/view/user_profile/screen_user_profile.dart';
import '../view/home/screen_home.dart';



class RouteGenarator {

  // Rout screence

  static const String login = '/';
  static const String register = '/signup';
  static const String home = '/home';
  static const String userprofile = '/userprofile';
  

// This return specific screence

  static Route<Widget> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (_) =>   const ScreenLogin(),
        );
      case register:
        return MaterialPageRoute(
          builder: (_) => const ScreenRegister(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const ScreenHome(),
        );
      case userprofile:
        return MaterialPageRoute(
          builder: (_) => const ScreenUserProfile(),
        );
    }
    return MaterialPageRoute(
      builder: (_) => const ScreenHome(),
    );
  }
}