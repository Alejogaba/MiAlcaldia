import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:MiAlcaldia/routes/routes.dart';
import 'package:MiAlcaldia/views/HomePage/state/homepageStateProvider.dart';
import 'package:MiAlcaldia/views/SplashScreen/splashscreen.dart';
import './constants/constants.dart';
import 'pages/homepage_2.dart';
import './theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext csontext) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>HomePageStateProvider())
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: kHomePageTitle,
        theme: kAppTheme,
        initialRoute: AppRoutes.ROUTE_Initial,
        onGenerateRoute: AppRoutes.generateRoutes,
      ),
    );
  }
}
