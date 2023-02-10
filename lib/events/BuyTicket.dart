import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link_up/events/TicketType.dart';

class BuyTicket extends StatefulWidget {
  String? title;
  String? description;
  String? start_time;
  String? end_time;
  String? country;
  String? state;
  String? venue;

  BuyTicket(
      {this.title,
      this.description,
      this.end_time,
      this.start_time,
      this.country,
      this.state,
      this.venue});

  @override
  State<BuyTicket> createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
   String stripHtmlIfNeededd(String text) {
    return text.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), ' ');
  }
  String? location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/top (2).png",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset("assets/link.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70,
                  ),
                  child: Image.asset(
                    "assets/Group_163989-removebg-preview.png",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Row(
                    children: [
                      Text(
                        "+49 Going",
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 171, 216),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 18,
                        width: 69,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              primary: Color.fromRGBO(214, 220, 22, 1),
                            ),
                            onPressed: () {},
                            child: Text(
                              "INVITE",
                              style: TextStyle(fontSize: 8),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.title.toString(),
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 171, 216),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                //   "INTERNATIONAL",
                //   style: TextStyle(
                //     color: Color.fromARGB(255, 56, 171, 216),
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                SizedBox(
                  height: 6,
                ),
                Divider(
                  color: Color.fromARGB(255, 219, 239, 246),
                  indent: 20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
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
                        widget.start_time.toString(),
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
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 95),
                  child: Row(
                    children: [
                      Image.asset("assets/clock.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.end_time.toString(),
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
                  height: 6,
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
                        widget.venue.toString(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 154, 154, 154)
                              .withOpacity(0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        ",",
                        style: TextStyle(
                          color: Color.fromARGB(255, 154, 154, 154)
                              .withOpacity(0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.country.toString(),
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
                  height: 6,
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
                  stripHtmlIfNeededd(widget.description.toString()),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(154, 154, 154, 1), fontSize: 12),
                ),
                SizedBox(
                  height: 20,
                ),
                // Text(
                //   "Nam facere velit id nostrum quas sed quidem repellendus in pariatur fugiat in voluptas asperiores non rerum numquam fuga nesciunt! Aut cupiditate eaque .",
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //       color: Color.fromRGBO(154, 154, 154, 1), fontSize: 12),
                // ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 317,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color.fromRGBO(56, 171, 216, 1)),
                      onPressed: () {
                        Get.to(TicketType(
                          tit: widget.title,
                        ));
                      },
                      child: Text(
                        "Buy Ticket 120\$",
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
