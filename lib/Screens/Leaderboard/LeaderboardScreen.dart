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
        child: Container(
          height: 200,
          width: vwidth,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0)),
            color: Colors.grey.shade300,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  profile,
                ),
                radius: 50,
              ),
              Column(
                children: [
                  Image.asset(
                    goldCrown,
                    width: 80,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      profile,
                    ),
                    radius: 50,
                  ),
                ],
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  profile,
                ),
                radius: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
