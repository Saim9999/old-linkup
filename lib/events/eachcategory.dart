import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:link_up/events/BuyTicket.dart';

import '../ui/DrawerScreen.dart';

class EachCategory extends StatefulWidget {
  String? id;
  String? countryid;
  EachCategory({this.id, this.countryid});
  @override
  State<EachCategory> createState() => EachCategoryState();
}

class EachCategoryState extends State<EachCategory> {
  String stripHtmlIfNeededd(String text) {
    return text.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), ' ');
  }

  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      key: _scaffoldKey,
      // appBar: AppBar(
      //   leading: Icon(Icons.menu),
      //   backgroundColor: Colors.blue,
      //   centerTitle: true,
      //   title: Text(
      //     "All Events",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Icon(Icons.search),
      //     )
      //   ],
      // ),
      body: Stack(children: [
        Container(
          height: appSize.height * 0.2,
          width: appSize.width * 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Group 163959.jpg"))),
        ),
        InkWell(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 26,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50, left: 159),
          child: Text(
            widget.id.toString(),
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.only(top: 50, left: 350),
        //   child: Icon(
        //     Icons.search,
        //     color: Colors.white,
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.only(top: appSize.height * 0.11),
          child: SingleChildScrollView(
            child: SizedBox(
              height: appSize.height * 1,
              width: appSize.width * 1,
              child: StreamBuilder<QuerySnapshot>(
                  stream: _firestore
                      .collection("events")
                      .where("category", isEqualTo: widget.id)
                      .where("country",isEqualTo: widget.countryid)
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
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
                                  borderRadius: BorderRadius.circular(20)),
                              child: InkWell(
                                onTap: () {
                                  Get.to(BuyTicket(
                                    title: data.get("title"),
                                    description: data.get("description"),
                                    start_time: data.get("start_time"),
                                    end_time: data.get("end_time"),
                                    country: data.get("country"),
                                    state: data.get("state"),
                                    venue: data.get("venue"),
                                  ));
                                },
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
                                      padding: const EdgeInsets.only(top: 121),
                                      child: Container(
                                          height: appSize.height * 0.15,
                                          width: appSize.width * 0.2,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: ListView(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      data.get("title"),
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 24,
                                                  ),
                                                  Container(
                                                    height: 19,
                                                    width: 60.62,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/Group 163989.png"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  stripHtmlIfNeededd(
                                                      data.get("description")),
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                )
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      "Location",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  Text(
                                                    data.get("phone"),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    ",",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    data.get("type"),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
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
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        )
                      ],
                    );
                  }),
            ),
          ),
        ),
      ]),
    );
  }
}
