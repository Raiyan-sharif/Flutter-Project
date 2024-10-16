import 'package:flutter/material.dart';
import 'package:raiyan_sharif_profile/mobile/contact_mobile.dart';
import 'package:raiyan_sharif_profile/mobile/landing_page_mobile.dart';
import 'package:raiyan_sharif_profile/web/contact_web.dart';
import 'package:raiyan_sharif_profile/web/landing_page_web.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case '/':
        return MaterialPageRoute(settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constrains){
              if(constrains.maxWidth > 800){
                return LandingPageWeb();
              }
              else return LandingPageMobile();
            }));
      case '/contact':
        return MaterialPageRoute(settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constrains){
              if(constrains.maxWidth > 800){
                return ContactWeb();
              }
              else return ContactMobile();
            }));


      default:
        return MaterialPageRoute(settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constrains){
              if(constrains.maxWidth > 800){
                return LandingPageWeb();
              }
              else return LandingPageMobile();
            }));
    }
  }
}