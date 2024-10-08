import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:raiyan_sharif_profile/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black),),
                child: Image.asset("assets/raiyan_circle.png"),
              ),
            ),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(height: 20.0,),
            TabsMobile(text: "Works", route: "/works"),
            SizedBox(height: 20.0,),
            TabsMobile(text: "Blog", route: "/blog"),
            SizedBox(height: 20.0,),
            TabsMobile(text: "About", route: "/about"),
            SizedBox(height: 20.0,),
            TabsMobile(text: "Contact", route: "/contact"),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () async => await launchUrl(Uri.parse("https://github.com/Raiyan-sharif/")),
                    icon: SvgPicture.asset("assets/github.svg", width: 35.0,),),
                IconButton(onPressed: () async => await launchUrl(Uri.parse("https://www.linkedin.com/in/raiyan-sharif-0a18a2b3")),
                  icon: SvgPicture.asset("assets/linkedin.svg", width: 35.0,),),

              ],
            ),

          ],
        ),
      ),
      body: ListView(
        children: [
          //Intro First Section
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/raiyan_circle.png"),
                  ),
                ),
                SizedBox(height: 25.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)
                        )
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: SansBold("Hello I'm", 15.0),
                    ),
                    SansBold("Raiyan Sharif", 40.0),
                    SansBold("iOS|Flutter|Python Developer", 20.0),
                    SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 3.0,
                          children: [
                            Icon(Icons.email),
                            Icon(Icons.call),
                            Icon(Icons.location_pin),
                          ],
                        ),
                        SizedBox(width: 40.0,),
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 9.0,
                          children: [
                            Sans("raiyan.sharif.1234@gmail.com",15.0),
                            Sans("+8801615575290",15.0),
                            Sans("Mirpur, Dhaka, Bangladesh",15.0),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
