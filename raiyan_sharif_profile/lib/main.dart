import 'package:flutter/material.dart';
import 'package:raiyan_sharif_profile/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
      // home: LayoutBuilder(
      //   builder: (context, constrains) {
      //     if (constrains.maxWidth > 800) {
      //       return LandingPageWeb();
      //     } else {
      //       return LandingPageMobile();
      //     }
      //   },
      // ),
    );
  }
}
