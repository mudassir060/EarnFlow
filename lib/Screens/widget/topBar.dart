// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../constant/images.dart';
import '../../../constant/style.dart';

Widget topBar() {
  return Card(
    margin: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        Row(
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
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 25,
                    width: 90,
                    decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: primaryColor, width: 2)),
                    child: const Center(child: Text("withdraw")),
                  ),
                ),
              ),
            ]),
          ],
        )
      ],
    ),
  );
}
