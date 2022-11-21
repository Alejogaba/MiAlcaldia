import 'package:MiAlcaldia/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:MiAlcaldia/pages/homepage_2.dart';
import 'package:MiAlcaldia/views/SplashScreen/splashscreen.dart';
import 'package:MiAlcaldia/views/ViewDetails/viewDetails.dart';

import '../pages/home_page.dart';

class AppRoutes {


  static const String ROUTE_Initial = ROUTE_Splashscreen;

  static const String ROUTE_Home = "/home";
  static const String ROUTE_Splashscreen = "/splash";
  static const String ROUTE_ViewDetails = "/view";
  static const String ROUTE_Login = "/login";

  static Route<dynamic> generateRoutes(RouteSettings settings) {

    switch (settings.name) {
      case ROUTE_Home:
        return MaterialPageRoute(          
            settings: settings, builder: (_) => Home_Page_2());
        break;
      case ROUTE_Splashscreen:
          return MaterialPageRoute(
            settings: settings, builder: (_) => SplashScreen());
        break;
      case ROUTE_ViewDetails:
          return MaterialPageRoute(
            settings: settings, builder: (_) => ViewDetails());
        break;
      case ROUTE_Login:
          return MaterialPageRoute(
            settings: settings, builder: (_) => LoginPage());
      break;
    }
  }
}
