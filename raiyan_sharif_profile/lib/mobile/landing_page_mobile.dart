import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raiyan_sharif_profile/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  tealContainer(String text){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
        borderRadius: BorderRadius.circular(5.0),),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
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
          ),
          SizedBox(height: 90,),
          //About me - Second Section
          
          Padding(padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("About me", 35.0,),
                Sans("Hello! I'm Raiyan Sharif I specialize in iOS, Flutter and Python development", 15.0,),
                Sans("I strive to ensure astounding performance with state of", 15.0,),
                Sans("the art security for iOS, Flutter and Python", 15.0,),
                SizedBox(height: 10.0,),
                Wrap(
                  spacing: 7.0,
                  runSpacing: 7.0,
                  children: [
                    tealContainer("iOS"),
                    tealContainer("Flutter"),
                    tealContainer("Python")

                  ],

                )

              ],
            ),
          ),
          SizedBox(height: 60.0,),
          //Third Section What i do?
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What i do?", 35.0,),
              AnimatedCard(
                imagePath: "assets/webL.png",
                text: "Web Development",
                width: 300.0,
              ),
              SizedBox(height: 35,),
              AnimatedCard(
                imagePath: "assets/app.png",
                text: "App Development",
                fit: BoxFit.contain,
                reverse: true,
                width: 300.0,
              ),
              SizedBox(height: 35,),
              AnimatedCard(
                imagePath: "assets/firebase.png",
                text: "Back-end Development",
                width: 300.0,
              ),
              SizedBox(height: 60,),
            ],
          ),

          // Forth Section - Contact section
          Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold("Contact me", 35.0),
              TextForm(text: "First Name", width: widthDevice/1.4, hintText: "Please type first name"),
              TextForm(text: "Last Name", width: widthDevice/1.4, hintText: "Please type last name"),
              TextForm(text: "Email", width: widthDevice/1.4, hintText: "Please type email address"),
              TextForm(text: "Phone number", width: widthDevice/1.4, hintText: "Please type phone number"),
              TextForm(text: "Message", width: widthDevice/1.4, hintText: "Mesage", maxLines: 10,),
              MaterialButton(
                onPressed: (){

                },
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                height: 60.0,
                minWidth: widthDevice/2.2,
                color: Colors.tealAccent,
                child: SansBold("Submit", 20.0),

              )
            ],
          )

          
        ],
      ),
    );
  }
}
