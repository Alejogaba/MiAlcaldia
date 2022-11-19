import 'package:MiAlcaldia/pages/principal_page.dart';
import 'package:MiAlcaldia/pages/home_page.dart';
import 'package:MiAlcaldia/pages/login_page.dart';
import 'package:MiAlcaldia/pages/regiter_login_page.dart';
import 'package:get/route_manager.dart';

routes() => [
      GetPage(name: "/home", page: () => HomePage()),
      GetPage(name: "/registration", page: () => RegisterLoginPage()),
      GetPage(name: "/loginpage", page: () => LoginPage()),
      GetPage(name: "/logingoogle", page: () => LoginPage()),
      GetPage(
          name: "/foodpage",
          page: () => FoodPage(),
          transition: Transition.zoom),
    ];
