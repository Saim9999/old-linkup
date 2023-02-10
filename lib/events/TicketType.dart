import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:link_up/events/couponscreen.dart';
import 'package:link_up/events/event9.dart';
import 'package:link_up/events/eventfile8.dart';

class TicketType extends StatefulWidget {
  String? tit;
  TicketType({this.tit});

  @override
  State<TicketType> createState() => _TicketTypeState();
}

class _TicketTypeState extends State<TicketType> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    var appSize2 = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Group 163959 (1).jpg"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 10),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Ticket Type",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 190),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 56, 171, 216),
                        borderRadius: BorderRadius.circular(3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Early Bird VIP",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  //  SizedBox(
                  //   width: 10,
                  //  ),
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(214, 220, 22, 1),
                        borderRadius: BorderRadius.circular(3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Regular VIP",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: _decrementCounter,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(251, 217, 217, 217),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                          child: Text(
                        '-',
                        style: TextStyle(fontSize: 30),
                      )),
                    ),
                  ),
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: _incrementCounter,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(251, 217, 217, 217),
                          borderRadius: BorderRadius.circular(3)),
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Event Category",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap:() {
                 Navigator.push(context, MaterialPageRoute(builder: (_){
                  return CouponScreen();
                 }));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Apply Coupon",
                      style: TextStyle(fontSize: 14, color: Colors.black38),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.arrow_right,
                        color: Color.fromARGB(255, 56, 171, 216),
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "Pay from waller\nLinkup Event Balance",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_right,
                      color: Color.fromARGB(255, 56, 171, 216),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text(
                "Available for Payment \$65.0",
                style: TextStyle(fontSize: 14, color: Colors.black38),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total:                 \$150.0",
                    style: TextStyle(
                        color: Color.fromARGB(255, 56, 171, 216),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "!Tax:                     \$0.00",
                    style: TextStyle(
                        color: Color.fromARGB(255, 56, 171, 216),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "!Fees:                   \$0.00",
                    style: TextStyle(
                        color: Color.fromARGB(255, 56, 171, 216),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Total:                   \$0.00",
                    style: TextStyle(
                        color: Color.fromARGB(255, 56, 171, 216),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return Event9();
                    }));
                  },
                  child: Container(
                    height: 40,
                    width: 260,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(214, 220, 22, 1),
                        borderRadius: BorderRadius.circular(3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "CONTINUE",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.arrow_right,
                              color: Color.fromRGBO(214, 220, 22, 1),
                              size: 30,
                            ),
                          ),
                        )

                        // Icon(
                        //    Icons.arrow_right,
                        //   color: Color.fromRGBO(214, 220, 22, 1),
                        //   size: 30,
                        // )
                      ],
                    ),
                  )),
            )
          ],
        ),

       
      ]),
    );
  }
}
