import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Group 163959 (2).jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Available Coupon",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/Rectangle.png",
                    height: 30,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Get 10% OFF up to \$100",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "In case the cashback is not credited within stipulatedtimeline, please contact 0120-4456-456",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/VIP.png",
                        height: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/Economy.png",
                        height: 40,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Image.asset(
                    "assets/Rectangle (1).png",
                    height: 30,
                  ),
                  Text(
                    "Cashback using CityBank",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "applicable with Paytm wallet. Paytm cashback will becredited in your wallet within 24 hours of ordercompletion In casse the cashback is no...",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/VIP (1).png",
                        height: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/Economy.png",
                        height: 40,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
