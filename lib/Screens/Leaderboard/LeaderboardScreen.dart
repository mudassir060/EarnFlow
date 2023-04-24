import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constant/images.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    var vheight = MediaQuery.of(context).size.height;
    var vwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: vwidth,
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
                color: Colors.grey.shade300,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 topImg("Thomas Shelby",6565)
           ,       Column(
                    children: [
                      Image.asset(
                        goldCrown,
                        width: 80,
                      ),
                 topImg("Thomas Shelby",6565)
                    ],
                  ),
                 topImg("Thomas Shelby",6565)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget topImg(name, point) {
  return Column(
    children:  [
      const CircleAvatar(
        backgroundImage: AssetImage(
          profile,
        ),
        radius: 50,
      ),
      Text(name.toString()),
      Text(point.toString()),
    ],
  );
}
