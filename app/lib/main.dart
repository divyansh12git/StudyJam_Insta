import 'package:app/screens/loginScreen.dart';
import 'package:app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/colors.dart';
import 'package:app/screens/landingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => LogInScreen(),
        MyRoutes.LandingRoute:(context)=>LandingPage(),
      },
    );
  }
}
