import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:link_up/events/event9.dart';
import 'package:link_up/events/event_detail.dart';
import 'package:link_up/ui/DrawerScreen.dart';

class Event8 extends StatefulWidget {
  // const Event8({super.key});

  @override
  State<Event8> createState() => _Event8State();
  
}

class _Event8State extends State<Event8> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        // backgroundColor: Colors.green.shade900,
        child: DrawerScreen(),
      ),
      body: Stack(children: [
        Image.asset("assets/bck.jpg"),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Padding(
                   padding: const EdgeInsets.only(top:80 ),
                   child: IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                    color: Colors.white,
                    iconSize: 35,
                ),
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Center(child: Image.asset("assets/Link 1.png")),
                ),
                SizedBox(width: 20,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "EVENTS",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Image.asset("assets/main-removebg-preview.png"),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 175,
                    ),
                    Center(
                      child: Text(
                        "FLORAL SINGING \n INTERNATIONAL",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Organizer, Name",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "5th Sept, 2022",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "412, Jorge Corad Road, Location",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Time 07:30 PM.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
            // Stack(children: [
            //   Padding(
            //     padding: const EdgeInsets.only(left: 50, right: 50),
            //     child: Image.asset("assets/Rectangle 23327.jpg"),
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.only(top: 7),
            //     child: Center(
            //       child: Text(
            //         "My Bookings",
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   )
            // ]),
            GestureDetector(
              child: Container(
                height: 35,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage("assets/Rectangle 23327.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Text(
                    "My Bookings",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                
                // Get.to(EventDetail());
              },
            ),
          ],
        )
      ]),
    );
  }
}
