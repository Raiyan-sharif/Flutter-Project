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
                SizedBox(
                  height: 15,
                ),
                SansBold(
                  "Raiyan Sharif",
                  55.0,
                ),
                Sans("iOS | Odoo | Fast API | Flutter Developer", 30.0),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Sans("raiyan.sharif.1234@gmail.com", 15.0),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.call,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Sans("+8801615575290", 15.0),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                    ),
                    SizedBox(
                      width: 20,
                    ),
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
          height: heightDevice / 1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Image.asset("assets/web.jpg", height: heightDevice/1.7,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SansBold(
                  "About me",
                  40.0,
                ),
                SizedBox(
                  height: 15,
                ),
                Sans(
                  "Hello I am Raiyan Sharif Specialized on iOS, Flutter and Python",
                  15,
                ),
                Sans("I strive to ensure astounding performance with state of",
                    15),
                Sans("the art security of Anroid, iOS, Web,", 15),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.tealAccent,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.all(7.0),
                      child: Sans(
                        "iOS",
                        15.0,
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.tealAccent,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.all(7.0),
                      child: Sans(
                        "Flutter",
                        15.0,
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.tealAccent,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.all(7.0),
                      child: Sans(
                        "Odoo",
                        15.0,
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.tealAccent,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.all(7.0),
                      child: Sans(
                        "Fast API",
                        15.0,
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                  ],
                )
              ],
            ),
          ]),
        ),
        // Third Page
        Container(
          height: heightDevice/1.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SansBold("What I do?", 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 30,
                    shadowColor: Colors.tealAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/webL.png", height: 200, width: 200,),
                          SizedBox(height: 10,),
                          SansBold("Web Development", 15.0)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 30,
                    shadowColor: Colors.tealAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/app.png", height: 200, width: 200, fit: BoxFit.contain,),
                          SizedBox(height: 10,),
                          SansBold("App Development", 15.0)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 30,
                    shadowColor: Colors.tealAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/firebase.png", height: 200, width: 200,),
                          SizedBox(height: 10,),
                          SansBold("Back-end Development", 15.0)
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
