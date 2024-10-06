import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(children: [
        // First Page
        Container(
          height: heightDevice - 56,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: SansBold(
                    "Hello I'm",
                    15,
                  ),
                ),
                SizedBox(height: 15,),
                SansBold("Raiyan Sharif", 55.0,),
                Sans("iOS | Odoo | Fast API | Flutter Developer", 30.0),
                SizedBox(height: 15.0,),
                Row(
                  children: [
                    Icon(Icons.email,),
                    SizedBox(width: 20,),
                    Sans("raiyan.sharif.1234@gmail.com", 15.0),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Icon(Icons.call,),
                    SizedBox(width: 20,),
                    Sans("+8801615575290", 15.0),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Icon(Icons.location_pin,),
                    SizedBox(width: 20,),
                    Sans("Mirpur, Dhaka, Bangladsh", 15.0),
                  ],
                ),
              ],
            ),
            CircleAvatar(
              radius: 147,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 143.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 140.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/raiyan_circle.png"),
                ),
              ),
            ),
          ]),
        ),

        // Second Page
        Container(
          height: heightDevice/1.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SansBold("About me", 40.0,)
            ],
          ),
        )
      ]),
    );
  }
}
