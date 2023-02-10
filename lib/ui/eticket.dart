import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:link_up/ui/3in1Screen.dart';

class ETicket extends StatelessWidget {
  const ETicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/Group 163959.png",
                    ),
                    fit: BoxFit.cover)),
            child: Center(
                child: Text(
              "E-Ticket",
              style: TextStyle(fontSize: 22, color: Colors.white),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Event",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                SmallText('Singapore'),
                Divider(
                  endIndent: 15,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Date and Hour",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                SmallText(
                  "Thursday, 11th Dec, 10:11 AM - 8:08 AM",
                ),
                Divider(
                  endIndent: 15,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Event Location",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                SmallText('Singapore Expo, Singapore.'),
                Divider(
                  endIndent: 15,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Singapore",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText('Full name'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SmallText('Zozo'),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText('Phone'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SmallText('9876543210'),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText('Email'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SmallText('test@gmail.com'),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText('Seats'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SmallText('1x Early Bird'),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText('Tax'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SmallText('\$0'),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText('Payment Methods'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText('Status'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SmallText('Paid'),
                    )
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                InkWell(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return DownloadTicket();
                  }));
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color.fromARGB(255, 56, 171, 216)),
                    child: Center(
                      child: Text(
                        'Download Ticket',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text SmallText(String name) {
    return Text(
      name,
      style: TextStyle(fontSize: 16, color: Colors.black38),
    );
  }
}
