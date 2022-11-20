import 'package:MiAlcaldia/pages/principal_page.dart';
import 'package:MiAlcaldia/pages/home_page.dart';
import 'package:MiAlcaldia/pages/login_page.dart';
import 'package:MiAlcaldia/pages/regiter_login_page.dart';
import 'package:get/route_manager.dart';

import '../pages/login2_page.dart';

routes() => [
      GetPage(name: "/home", page: () => LoginPage()),
      GetPage(name: "/registration", page: () => RegisterLoginPage()),
      GetPage(name: "/loginpage", page: () => LoginPage()),
      GetPage(name: "/logingoogle", page: () => LoginPage()),
      GetPage(
          name: "/foodpage",
          page: () => PrincipalPage(),
          transition: Transition.zoom),
    ];
