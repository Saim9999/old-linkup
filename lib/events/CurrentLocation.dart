import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:link_up/events/AllEvents.dart';
import 'package:link_up/events/eachcategory.dart';
import 'package:link_up/ui/DrawerScreen.dart';

import '../get_controller/ChatController.dart';
import '../get_controller/auth_controller.dart';
import '../get_controller/home_controller.dart';
import 'BuyTicket.dart';

class CurrentLocation extends StatefulWidget {
  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  String stripHtmlIfNeededd(String text) {
    return text.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), ' ');
  }

  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController controller = TextEditingController();

  // const CurrentLocation({super.key});
  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    AuthController authController = Get.find(tag: AuthController().toString());
    HomeController homeController = Get.find(tag: HomeController().toString());
    ChatController chatController = Get.find(tag: ChatController().toString());
    var appSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      key: _scaffoldKey,
      body: ListView(
        children: [
          Container(
            height: 230,
            color: Color.fromARGB(255, 56, 171, 216),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Current Location",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Row(
                            children: [
                              Text(
                                authController.countryName.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                ",",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                authController.countryCode.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset("assets/search-normal.png"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CarouselSlider(
                    items: [
                      GestureDetector(
                        child: Container(
                          width: 55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/party.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(EachCategory(
                              id: "Party/Fete",
                              countryid: authController.countryName.value));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/image/all_events_pic (4).png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(AllEvents(
                            country: authController.countryName.toString(),
                          ));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/arts.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(EachCategory(
                              id: "Arts",
                              countryid: authController.countryName.value));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/sports.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(EachCategory(
                              id: "Sport",
                              countryid: authController.countryName.value));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/music.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(EachCategory(
                              id: "Music",
                              countryid: authController.countryName.value));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/food.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(EachCategory(
                              id: "Food",
                              countryid: authController.countryName.value));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/other.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(EachCategory(
                              id: "Other",
                              countryid: authController.countryName.value));
                        },
                      ),
                    ],
                    options: CarouselOptions(
                      height: 70.0,
                      enlargeCenterPage: false,
                      autoPlay: false,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 400),
                      viewportFraction: 0.25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 232,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/Group 163959.png",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text("Upcomming Events",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // CarouselSlider(
                  //   items: [
                  //     GestureDetector(
                  //       child: Container(
                  //         margin: EdgeInsets.only(bottom: 6),
                  //         width: 242,
                  //         decoration: BoxDecoration(
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Colors.grey.withOpacity(0.5),
                  //                 spreadRadius: 1.5,
                  //                 blurRadius: 5,
                  //                 offset: Offset(0, 2),
                  //               )
                  //             ],
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: Color.fromARGB(255, 238, 248, 250)),
                  //         child: Padding(
                  //           padding: const EdgeInsets.fromLTRB(0, 151, 0, 0),
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.only(
                  //                   bottomLeft: Radius.circular(10),
                  //                   bottomRight: Radius.circular(10)),
                  //               color: Color.fromARGB(255, 213, 220, 22),
                  //             ),
                  //             child: Padding(
                  //               padding: const EdgeInsets.only(top: 10),
                  //               child: ListView(
                  //                 // crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Row(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     mainAxisAlignment:
                  //                         MainAxisAlignment.spaceBetween,
                  //                     children: [
                  //                       Expanded(
                  //                         child: Padding(
                  //                           padding:
                  //                               const EdgeInsets.only(left: 10),
                  //                           child: Text(
                  //                             "FLORAL SINGING",
                  //                             style: TextStyle(
                  //                                 color: Colors.white,
                  //                                 fontWeight: FontWeight.bold,
                  //                                 fontSize: 16),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                       Padding(
                  //                         padding:
                  //                             const EdgeInsets.only(right: 12),
                  //                         child: Image.asset(
                  //                             "assets/Group 163989 (1).png"),
                  //                       ),
                  //                       // SizedBox(height: 6,)
                  //                     ],
                  //                   ),
                  //                   Padding(
                  //                     padding: const EdgeInsets.only(
                  //                         left: 10, top: 3),
                  //                     child: Text(
                  //                       "Lorem ipsum dolor sit amet, consectetuer\nadipiscing elit. Aenea",
                  //                       style: TextStyle(
                  //                           fontSize: 11, color: Colors.white),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     height: 10,
                  //                   ),
                  //                   Padding(
                  //                     padding: const EdgeInsets.only(left: 10),
                  //                     child: Text(
                  //                       "Location lorm ipsum doir, 132",
                  //                       style: TextStyle(
                  //                           fontSize: 11, color: Colors.white),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       onTap: () {
                  //         Get.to(AllEvents());
                  //       },
                  //     ),
                  //     GestureDetector(
                  //       child: Container(
                  //         margin: EdgeInsets.only(bottom: 6),
                  //         width: 242,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: Color.fromARGB(255, 238, 248, 250),
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Colors.grey.withOpacity(0.5),
                  //                 spreadRadius: 1.5,
                  //                 blurRadius: 5,
                  //                 offset: Offset(0, 2),
                  //               )
                  //             ]),
                  //         child: Padding(
                  //           padding: const EdgeInsets.fromLTRB(0, 151, 0, 0),
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.only(
                  //                   bottomLeft: Radius.circular(10),
                  //                   bottomRight: Radius.circular(10)),
                  //               color: Color.fromARGB(255, 213, 220, 22),
                  //             ),
                  //             child: Padding(
                  //               padding: const EdgeInsets.only(top: 10),
                  //               child: ListView(
                  //                 // crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Row(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     mainAxisAlignment:
                  //                         MainAxisAlignment.spaceBetween,
                  //                     children: [
                  //                       Expanded(
                  //                         child: Padding(
                  //                           padding:
                  //                               const EdgeInsets.only(left: 10),
                  //                           child: Text(
                  //                             "FLORAL SINGING",
                  //                             style: TextStyle(
                  //                                 color: Colors.white,
                  //                                 fontWeight: FontWeight.bold,
                  //                                 fontSize: 16),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                       Padding(
                  //                         padding:
                  //                             const EdgeInsets.only(right: 12),
                  //                         child: Image.asset(
                  //                             "assets/Group 163989 (1).png"),
                  //                       ),
                  //                       // SizedBox(height: 6,)
                  //                     ],
                  //                   ),
                  //                   Padding(
                  //                     padding: const EdgeInsets.only(
                  //                         left: 10, top: 3),
                  //                     child: Text(
                  //                       "Lorem ipsum dolor sit amet, consectetuer\nadipiscing elit. Aenea",
                  //                       style: TextStyle(
                  //                           fontSize: 11, color: Colors.white),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     height: 10,
                  //                   ),
                  //                   Padding(
                  //                     padding: const EdgeInsets.only(left: 10),
                  //                     child: Text(
                  //                       "Location lorm ipsum doir, 132",
                  //                       style: TextStyle(
                  //                           fontSize: 11, color: Colors.white),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       onTap: () {
                  //         Get.to(AllEvents());
                  //       },
                  //     ),
                  //   ],
                  //   options: CarouselOptions(
                  //     height: 237.0,
                  //     enlargeCenterPage: false,
                  //     autoPlay: false,
                  //     autoPlayCurve: Curves.fastOutSlowIn,
                  //     enableInfiniteScroll: true,
                  //     autoPlayAnimationDuration: Duration(milliseconds: 400),
                  //     viewportFraction: 0.7,
                  //   ),
                  // ),
                  SizedBox(
                    height: appSize.height * 0.5,
                    width: appSize.width * 1,
                    child: StreamBuilder<QuerySnapshot>(
                        stream: _firestore
                            .collection("events")
                            .where("country",
                                isEqualTo:
                                    authController.countryName.toString())
                            .snapshots(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasData) {
                            // entcontroller.title!.value = _firestore
                            //     .collection("events")
                            //     .snapshots()
                            //     .toString();
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                final data = snapshot.data!.docs[index];
                                return Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    height: appSize.height * 0.4,
                                    width: appSize.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Container(
                                          height: appSize.height * 0.1,
                                          width: appSize.width * 0.2,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      data.get("image_object")),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 121),
                                          child: Container(
                                              height: appSize.height * 0.15,
                                              width: appSize.width * 0.2,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20),
                                                ),
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  Get.to(BuyTicket(
                                                    title: data.get("title"),
                                                    description:
                                                        data.get("description"),
                                                    start_time:
                                                        data.get("start_time"),
                                                    end_time:
                                                        data.get("end_time"),
                                                    country:
                                                        data.get("country"),
                                                    state: data.get("state"),
                                                    venue: data.get("venue"),
                                                  ));
                                                },
                                                child: ListView(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Text(
                                                            data.get("title"),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 10),
                                                          ),
                                                        ),
                                                        // SizedBox(
                                                        //   width: 8,
                                                        // ),
                                                        Container(
                                                          height: 19,
                                                          width: 60.62,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/Group 163989.png"),
                                                                  fit: BoxFit
                                                                      .cover)),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          // Text(
                                                          //   data.get(
                                                          //       "description"),
                                                          //   style: TextStyle(
                                                          //       color: Colors
                                                          //           .white,
                                                          //       fontSize: 5),
                                                          // ),
                                                          Text(
                                                            stripHtmlIfNeededd(
                                                              "${data.get("description")}",
                                                            ),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 5),
                                                          ),
                                                          Text(
                                                            data.get("state"),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .transparent,
                                                                fontSize: 5),
                                                          ),
                                                          Text(
                                                            data.get("country"),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .transparent,
                                                                fontSize: 5),
                                                          ),
                                                          Text(
                                                            data.get("venue"),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .transparent,
                                                                fontSize: 5),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Text(
                                                            "Location",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 9),
                                                          ),
                                                        ),
                                                        Text(
                                                          data.get(
                                                              "start_time"),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 7),
                                                        ),
                                                        Text(
                                                          ",",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 7),
                                                        ),
                                                        Text(
                                                          data.get("end_time"),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 7),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Please add events from Admin Pannel",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          );
                        }),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 77,
                      width: 334,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 56, 171, 216),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Text(
                                  "INVITE YOUR FRIENDS",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    height: 18,
                                    width: 69,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(214, 220, 22, 1),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "INVITE",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Get 20\$ off Tickets",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // GestureDetector(
                  //   child: Container1(),
                  //   onTap: () {
                  //      Get.to(AllEvents());
                  //   },
                  // ),
                  // Divider(
                  //   color: Color.fromARGB(255, 219, 239, 246),
                  //   indent: 10,
                  //   endIndent: 10,
                  // ),
                  // GestureDetector(
                  //   child: Container1(),
                  //   onTap: () {
                  //      Get.to(AllEvents());
                  //   },
                  // ),
                  // Divider(
                  //   color: Color.fromARGB(255, 219, 239, 246),
                  //   indent: 10,
                  //   endIndent: 10,
                  // ),
                  // GestureDetector(
                  //   child: Container1(),
                  //   onTap: () {
                  //      Get.to(AllEvents());
                  //   },
                  // ),
                  // Divider(
                  //   color: Color.fromARGB(255, 219, 239, 246),
                  //   indent: 10,
                  //   endIndent: 10,
                  // ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: appSize.height * 1,
                        width: appSize.width * 1,
                        child: StreamBuilder<QuerySnapshot>(
                            stream: _firestore
                                .collection("events")
                                .where("country",
                                    isEqualTo:
                                        authController.countryName.toString())
                                .snapshots(),
                            builder: (BuildContext context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasData) {
                                return ListView.builder(
                                    itemCount: snapshot.data!.docs.length,
                                    itemBuilder: (context, index) {
                                      final data = snapshot.data!.docs[index];
                                      return Container(
                                        height: appSize.height * 0.14,
                                        width: appSize.width * 0.1,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        child: ListView(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10, left: 10),
                                                  child: Container(
                                                    height: 65,
                                                    width: 65,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.blue,
                                                      child: Container(
                                                        height: appSize.height *
                                                            0.1,
                                                        width:
                                                            appSize.width * 0.2,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    data.get(
                                                                        "image_object")),
                                                                fit: BoxFit
                                                                    .cover)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Get.to(BuyTicket(
                                                      title: snapshot
                                                          .data!.docs[index]
                                                          .get("title"),
                                                      start_time: snapshot
                                                          .data!.docs[index]
                                                          .get("start_time"),
                                                      end_time: snapshot
                                                          .data!.docs[index]
                                                          .get("end_time"),
                                                      venue: snapshot
                                                          .data!.docs[index]
                                                          .get("venue"),
                                                      description: snapshot
                                                          .data!.docs[index]
                                                          .get("description"),
                                                      country: snapshot
                                                          .data!.docs[index]
                                                          .get("country"),
                                                    ));
                                                  },
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 15),
                                                              child: Text(
                                                                  data.get(
                                                                      "start_time"),
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .grey,
                                                                      fontSize:
                                                                          13)),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 1),
                                                              child: Text(
                                                                  data.get(
                                                                      "end_time"),
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .transparent,
                                                                      fontSize:
                                                                          5)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 08,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 15),
                                                          child: Text(
                                                            data.get("title"),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 06,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 15),
                                                              child: Text(
                                                                data.get(
                                                                    "venue"),
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ),
                                                            // Text(",",
                                                            //     style: TextStyle(
                                                            //         color: Colors
                                                            //             .grey,
                                                            //         fontSize:
                                                            //             20)),
                                                            // Padding(
                                                            //   padding:
                                                            //       const EdgeInsets
                                                            //               .only(
                                                            //           left: 0),
                                                            //   child: Text(
                                                            //     dataaa
                                                            //         .get("phone"),
                                                            //     style: TextStyle(
                                                            //         color: Colors
                                                            //             .grey,
                                                            //         fontSize: 15),
                                                            //   ),
                                                            // ),
                                                          ],
                                                        ),
                                                      ]),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              }
                              return CircularProgressIndicator();
                            }),
                      ),
                    ),
                  ),
                  Divider(),

                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: SizedBox(
                  //     height: appSize.height * 0.1,
                  //     width: appSize.width * 1,
                  //     child: StreamBuilder<QuerySnapshot>(
                  //         stream: _firestore.collection("events").snapshots(),
                  //         builder: (BuildContext context,
                  //             AsyncSnapshot<QuerySnapshot> snapshot) {
                  //           if (snapshot.hasData) {
                  //             return Container(
                  //               height: appSize.height * 0.3,
                  //               width: appSize.width * 0.1,
                  //               decoration: BoxDecoration(color: Colors.white),
                  //               child: ListView(
                  //                 children: [
                  //                   Row(
                  //                     children: [
                  //                       Padding(
                  //                         padding: EdgeInsets.only(
                  //                             top: 10, left: 10),
                  //                         child: Container(
                  //                           height: 65,
                  //                           width: 65,
                  //                           child: CircleAvatar(
                  //                             backgroundColor: Colors.blue,
                  //                             child: Container(
                  //                               height: appSize.height * 0.1,
                  //                               width: appSize.width * 0.2,
                  //                               decoration: BoxDecoration(
                  //                                   image: DecorationImage(
                  //                                       image: NetworkImage(snapshot
                  //                                           .data!.docs[1]
                  //                                           .get(
                  //                                               "image_object")),
                  //                                       fit: BoxFit.cover)),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () {
                  //                           Get.to(BuyTicket(
                  //                             title: snapshot.data!.docs[1]
                  //                                 .get("title"),
                  //                             start_time: snapshot.data!.docs[1]
                  //                                 .get("start_time"),
                  //                             end_time: snapshot.data!.docs[1]
                  //                                 .get("end_time"),
                  //                             venue: snapshot.data!.docs[1]
                  //                                 .get("venue"),
                  //                                 description: snapshot.data!.docs[1].get("description"),
                  //                                 country: snapshot.data!.docs[1].get("country"),

                  //                           ));
                  //                         },
                  //                         child: Column(
                  //                             crossAxisAlignment:
                  //                                 CrossAxisAlignment.start,
                  //                             children: [
                  //                               Row(
                  //                                 children: [
                  //                                   Padding(
                  //                                     padding:
                  //                                         const EdgeInsets.only(
                  //                                             left: 15),
                  //                                     child: Text(
                  //                                         snapshot.data!.docs[1]
                  //                                             .get(
                  //                                                 "start_time"),
                  //                                         style: TextStyle(
                  //                                             color:
                  //                                                 Colors.grey,
                  //                                             fontSize: 13)),
                  //                                   ),
                  //                                   Padding(
                  //                                     padding:
                  //                                         const EdgeInsets.only(
                  //                                             left: 1),
                  //                                     child: Text(
                  //                                         snapshot.data!.docs[1]
                  //                                             .get("end_time"),
                  //                                         style: TextStyle(
                  //                                             color: Colors
                  //                                                 .transparent,
                  //                                             fontSize: 5)),
                  //                                   ),
                  //                                 ],
                  //                               ),
                  //                               SizedBox(
                  //                                 height: 08,
                  //                               ),
                  //                               Row(
                  //                                 children: [
                  //                                   Padding(
                  //                                     padding:
                  //                                         const EdgeInsets.only(
                  //                                             left: 15),
                  //                                     child: Text(
                  //                                       snapshot.data!.docs[1]
                  //                                           .get("title"),
                  //                                       style: TextStyle(
                  //                                           color: Colors.black,
                  //                                           fontSize: 20),
                  //                                     ),
                  //                                   ),
                  //                                   Text(
                  //                                     snapshot.data!.docs[1]
                  //                                         .get("description"),
                  //                                     style: TextStyle(
                  //                                         color: Colors
                  //                                             .transparent,
                  //                                         fontSize: 1),
                  //                                   ),
                  //                                 ],
                  //                               ),
                  //                               SizedBox(
                  //                                 height: 06,
                  //                               ),
                  //                               Row(
                  //                                 mainAxisAlignment:
                  //                                     MainAxisAlignment.start,
                  //                                 crossAxisAlignment:
                  //                                     CrossAxisAlignment.start,
                  //                                 children: [
                  //                                   Padding(
                  //                                     padding:
                  //                                         const EdgeInsets.only(
                  //                                             left: 10),
                  //                                     child: Text(
                  //                                       snapshot.data!.docs[1]
                  //                                           .get("venue"),
                  //                                       style: TextStyle(
                  //                                           color: Colors.grey,
                  //                                           fontSize: 15),
                  //                                     ),
                  //                                   ),
                  //                                   // Text(",",
                  //                                   //     style: TextStyle(
                  //                                   //         color: Colors.grey,
                  //                                   //         fontSize: 20)),
                  //                                   // Padding(
                  //                                   //   padding:
                  //                                   //       const EdgeInsets.only(
                  //                                   //           left: 0),
                  //                                   //   child: Text(
                  //                                   //     snapshot.data!.docs[1]
                  //                                   //         .get("phone"),
                  //                                   //     style: TextStyle(
                  //                                   //         color: Colors.grey,
                  //                                   //         fontSize: 15),
                  //                                   //   ),
                  //                                   // ),
                  //                                 ],
                  //                               ),
                  //                             ]),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //             );
                  //           }
                  //           return CircularProgressIndicator();
                  //         }),
                  //   ),
                  // ),
                  // Divider(),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: SizedBox(
                  //     height: appSize.height * 0.1,
                  //     width: appSize.width * 1,
                  //     child: StreamBuilder<QuerySnapshot>(
                  //         stream: _firestore.collection("events").snapshots(),
                  //         builder: (BuildContext context,
                  //             AsyncSnapshot<QuerySnapshot> snapshot) {
                  //           if (snapshot.hasData) {
                  //             return Container(
                  //               height: appSize.height * 0.3,
                  //               width: appSize.width * 0.1,
                  //               decoration: BoxDecoration(color: Colors.white),
                  //               child: ListView(
                  //                 children: [
                  //                   Row(
                  //                     children: [
                  //                       Padding(
                  //                         padding: EdgeInsets.only(
                  //                             top: 10, left: 10),
                  //                         child: Container(
                  //                           height: 65,
                  //                           width: 65,
                  //                           child: CircleAvatar(
                  //                             backgroundColor: Colors.blue,
                  //                             child: Container(
                  //                               height: appSize.height * 0.1,
                  //                               width: appSize.width * 0.2,
                  //                               decoration: BoxDecoration(
                  //                                   image: DecorationImage(
                  //                                       image: NetworkImage(snapshot
                  //                                           .data!.docs[2]
                  //                                           .get(
                  //                                               "image_object")),
                  //                                       fit: BoxFit.cover)),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                       Column(
                  //                           crossAxisAlignment:
                  //                               CrossAxisAlignment.start,
                  //                           children: [
                  //                             Padding(
                  //                               padding: const EdgeInsets.only(
                  //                                   left: 15),
                  //                               child: Text(
                  //                                   snapshot.data!.docs[2]
                  //                                       .get("start_time"),
                  //                                   style: TextStyle(
                  //                                       color: Colors.grey,
                  //                                       fontSize: 16)),
                  //                             ),
                  //                             SizedBox(
                  //                               height: 08,
                  //                             ),
                  //                             Padding(
                  //                               padding: const EdgeInsets.only(
                  //                                   left: 15),
                  //                               child: Text(
                  //                                 snapshot.data!.docs[2]
                  //                                     .get("title"),
                  //                                 style: TextStyle(
                  //                                     color: Colors.black,
                  //                                     fontSize: 20),
                  //                               ),
                  //                             ),
                  //                             SizedBox(
                  //                               height: 06,
                  //                             ),
                  //                             Row(
                  //                               children: [
                  //                                 Padding(
                  //                                   padding:
                  //                                       const EdgeInsets.only(
                  //                                           left: 15),
                  //                                   child: Text(
                  //                                     snapshot.data!.docs[2]
                  //                                         .get("venue"),
                  //                                     style: TextStyle(
                  //                                         color: Colors.grey,
                  //                                         fontSize: 20),
                  //                                   ),
                  //                                 ),
                  //                                 Text(",",
                  //                                     style: TextStyle(
                  //                                         color: Colors.grey,
                  //                                         fontSize: 20)),
                  //                                 Padding(
                  //                                   padding:
                  //                                       const EdgeInsets.only(
                  //                                           left: 0),
                  //                                   child: Text(
                  //                                     snapshot.data!.docs[2]
                  //                                         .get("state"),
                  //                                     style: TextStyle(
                  //                                         color: Colors.grey,
                  //                                         fontSize: 20),
                  //                                   ),
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ]),
                  //                       SizedBox(width: appSize.width * 0.1),
                  //                       InkWell(
                  //                           onTap: () {
                  //                             Get.to(AllEvents());
                  //                           },
                  //                           child: Image.asset(
                  //                               "assets/image/Polygon 14.png")),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //             );
                  //           }
                  //           return CircularProgressIndicator();
                  //         }),
                  //   ),
                  // ),
                  // Divider(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Container Container1() {
    return Container(
      height: 71,
      width: 350,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/Ellipse 2136.png"),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5th Sept, 2022",
                  style: TextStyle(
                    color: Color.fromARGB(255, 154, 154, 154),
                    fontSize: 9,
                  ),
                ),
                Text(
                  "Singning International",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "41, Jourge Coard Road, Location",
                  style: TextStyle(
                    color: Color.fromARGB(255, 154, 154, 154),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25),
            child: Icon(
              Icons.arrow_right_outlined,
              color: Color.fromARGB(255, 56, 171, 216),
              size: 32,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
