import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:link_up/ui/DrawerScreen.dart';

class DownloadTicket extends StatelessWidget {
  const DownloadTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          
          drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 211, 228, 212),
            child: DrawerScreen(),
          ),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/Group 163959 (3).png",
              fit: BoxFit.cover,
            )),
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text("Tickets"),
                ),
                SizedBox(
                  width: 120,
                ),
                Icon(Icons.search)
              ],
            ),
            bottom: TabBar(
              unselectedLabelColor: Colors.white30,
              labelStyle: TextStyle(fontSize: 16),
              indicatorColor: Color.fromARGB(255, 56, 171, 216),
              padding: EdgeInsets.only(bottom: 60),
              tabs: [
                Tab(text: "Upcomming"),
                Tab(text: "Completed"),
                Tab(text: "Cancelled")
              ],
            ),
            toolbarHeight: 140,
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    customcontainer(),
                    smallcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    smallcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    smallcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    smallcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    smallcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    smallcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    smallcontainer(),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    customcontainer(),
                    viewcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    viewcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    viewcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    viewcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    viewcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    viewcontainer(),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customcontainer(),
                    viewcontainer(),
                  ],
                ),
              ),
              Column(
                children: [
                  customcontainer(),
                  viewcontainer(),
                  Divider(
                    endIndent: 15,
                    indent: 15,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  customcontainer(),
                  viewcontainer(),
                  Divider(
                    endIndent: 15,
                    indent: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding viewcontainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromARGB(255, 56, 171, 216),
            ),
            child: Center(
              child: Text(
                'View E-Ticket',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding smallcontainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromARGB(255, 198, 203, 46),
            ),
            child: Center(
              child: Text(
                'Cancel Booking',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          SizedBox(
            width: 7,
          ),
          Container(
            height: 20,
            width: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromARGB(255, 56, 171, 216),
            ),
            child: Center(
              child: Text(
                'View E-Ticket',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding customcontainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Color.fromARGB(255, 56, 171, 216),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '11th Dec, 2022',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  Text(
                    'Singapore FinTech\nFestival',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Singapore Expo, Singapore',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Icon(
                  Icons.arrow_right,
                  size: 34,
                  color: Color.fromARGB(255, 56, 171, 216),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
