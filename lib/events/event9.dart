import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link_up/events/event_detail.dart';
import 'package:link_up/events/eventfile8.dart';

class Event9 extends StatefulWidget {
  // const Event9({super.key});

  @override
  State<Event9> createState() => _Event9State();
}

class _Event9State extends State<Event9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/Group_163959__1_-removebg-preview.png"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Payment Method",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset("assets/apple.png"),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "Apple Pay",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                // SizedBox(
                //   width: 180,
                // ),
                Image.asset("assets/Polygon_12-removebg-preview.png"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset("assets/PayPal.png"),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "PayPal",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                // SizedBox(
                //   width: 203,
                // ),
                Image.asset("assets/Polygon_12-removebg-preview.png"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset("assets/Google-Pay-Logo.png"),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "Google Pay",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                // SizedBox(
                //   width: 165,
                // ),
                Image.asset("assets/Polygon_12-removebg-preview.png"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/card meth.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "Pay by Debit/Card Card",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    // SizedBox(
                    //   width: 69,
                    // ),
                    Image.asset("assets/Polygon_12-removebg-preview.png"),
                    SizedBox(
                  width: 20,
                ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Text("***************")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 67,
              ),
              Expanded(
                child: Text(
                  "Add Voucher",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // SizedBox(
              //   width: 62,
              // ),
              Text(
                "16asd4ASD",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 12,
              ),
              Image.asset("assets/Polygon_12-removebg-preview.png"),
              SizedBox(
                  width: 20,
                ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(),
          ),
          SizedBox(
            height: 160,
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {

                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: InkWell(
                        onTap: (){
                          Get.to(EventDetail());
                        },
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/Group 163994.png"),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Ticket \n Confirmed",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontSize: 32),
                                      ),
                                      Image.asset(
                                        "assets/u.png",
                                        height: 80,
                                        width: 80,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Your ticket successfully confirmed",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   children: [
                                //     Container(
                                //       alignment: Alignment.center,
                                //       width: 65.0,
                                //       child: ElevatedButton(
                                //         onPressed: () {
                                //           // Get.to(EventDetail());
                                //           Get.to(EventDetail());
                                //         },
                                //         child: Text(
                                //           "View",
                                //           style: TextStyle(color: Colors.white),
                                //         ),
                                //         style: ElevatedButton.styleFrom(
                                //           backgroundColor: Color(0xff38ABD8),
                                //         ),
                                //       ),
                                //     ),
                                //   ],
                                // )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Container(
              height: 35,
              width: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage("assets/Rectangle 23327.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Center(
                child: Text(
                  "CHECKOUT",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
