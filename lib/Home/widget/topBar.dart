import 'package:flutter/material.dart';

import '../../constant/images.dart';
import '../../constant/style.dart';
import '../../widgets/myspacer.dart';

Widget topBar() {
  return Card(
    child: Padding(
      padding: const EdgeInsets.only(top: 20, left: 5),
      child: Row(
        children: [
          const Image(
            image: AssetImage(profile),
            width: 50,
            height: 50,
          ),
          Column(
            children: [
              const Text(
                "Hello,Ali Khan",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Image(
                    image: AssetImage(gold_coin),
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    "21",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("EF Coins"),
                ],
              ),
            ],
          ),
          myspacer(0.0, 50.0),

          //myspacer(0.0, 65.0),
          SizedBox(
            width: 170,
            child: Row(
              children: [
                const Image(
                  image: AssetImage(rocket),
                  height: 40,
                  width: 40,
                ),
                Stack(children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Image(
                      image: AssetImage(coin),
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 35,
                    //right: 10,
                    child: InkWell(
                      onTap: () {
                        print("=====>");
                      },
                      child: Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            color: whiteColor.withOpacity(0.5),
                            //color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: primaryColor, width: 2)),
                        child: const Center(child: Text("withdraw")),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
