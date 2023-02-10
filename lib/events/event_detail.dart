import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:link_up/events/TicketType.dart';
import 'package:link_up/events/chat_message_new.dart';
import 'package:link_up/events/eventfile8.dart';
import 'package:link_up/ui/DrawerScreen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'map.dart';

class EventDetail extends StatefulWidget {
  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  TextEditingController number = TextEditingController();

  Future<void> _dialCall() async {
    String phoneNumber = number.text.toString();
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }

CameraPosition _initialCameraPosition = CameraPosition(target: LatLng(20.5937, 78.9629));
// GoogleMapController googleMapController;
late GoogleMapController _controller;
  // const Massege({super.key});
  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Color(0XFF4E5B81),
        child: DrawerScreen(),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/top (2).png",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: IconButton(
                          onPressed: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset("assets/link.png"),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 20.0, left: 20),
                //   child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          _dialCall();
                        },
                        child: Image.asset(
                          "assets/Call.png",
                          height: 70,
                        ),
                      ),
                      InkWell(
                        onTap: (){
// GoogleMap(
//   initialCameraPosition: _initialCameraPosition ,
//   myLocationEnabled: true,
//   myLocationButtonEnabled: true,
//   mapType: MapType.normal,
//   zoomGesturesEnabled: true,
//   zoomControlsEnabled: true,
//   onMapCreated: (GoogleMapController c) {
//     // to control the camera position of the map
//     _controller = c;
//   },
// );
// print("Google Maps");
Navigator.push(context, MaterialPageRoute(builder: (_){
  return  Map1();
}));
                        },
                        child: Image.asset(
                          "assets/Direct.png",
                          height: 70,
                        ),
                      ),
                      GestureDetector(
                        child: Image.asset(
                          "assets/tickt.png",
                          height: 70,
                        ),
                        onTap: () {
                          Get.to(Event8());
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "FLORAL SINGING",
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 171, 216),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "INTERNATIONAL PARTY",
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 171, 216),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: Color.fromARGB(255, 219, 239, 246),
                  indent: 20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      Image.asset("assets/Ellipse 2097 (1).png"),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Organizer, Name",
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 171, 216),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Row(
                    children: [
                      Image.asset("assets/calendar.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "5th Sept, 2022",
                        style: TextStyle(
                          color: Color.fromARGB(255, 154, 154, 154)
                              .withOpacity(0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Image.asset("assets/clock.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "7:00 PM - 3:00 AM",
                        style: TextStyle(
                          color: Color.fromARGB(255, 154, 154, 154)
                              .withOpacity(0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Row(
                    children: [
                      Image.asset("assets/location(4) (1).png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "412, Jorge Coard Road, Location",
                        style: TextStyle(
                          color: Color.fromARGB(255, 154, 154, 154)
                              .withOpacity(0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "MEMBERS",
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 171, 216),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset("assets/Group_163989-removebg-preview.png"),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color.fromARGB(255, 219, 239, 246),
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "About Event",
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 171, 216),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet. Ut inventore alias aut eligendi quia in nemo molestiae aut voluptatibus quia sed maxime delectus qui eius debitis et rerum culpa. Non perspiciatis adipisci non voluptas debitis aut error architecto id blanditiis atque. Ut placeat quasi sed explicabo recusandae non sint similique.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(154, 154, 154, 1), fontSize: 12),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Nam facere velit id nostrum quas sed quidem repellendus in pariatur fugiat in voluptas asperiores non rerum numquam fuga nesciunt! Aut cupiditate eaque .",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(154, 154, 154, 1), fontSize: 12),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 317,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color.fromARGB(255, 213, 220, 22)),
                      onPressed: () {
                        Get.to(EventsChatScreen());
                      },
                      child: Text(
                        "MASSEGE",
                        style: TextStyle(fontSize: 16),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
