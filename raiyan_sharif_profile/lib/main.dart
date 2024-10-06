import 'package:flutter/material.dart';
import 'package:raiyan_sharif_profile/mobile/landing_page_mobile.dart';
import 'package:raiyan_sharif_profile/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth > 800) {
            return LandingPageWeb();
          } else {
            return LandingPageMobile();
          }
        },
      ),
    );
  }
}
