// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Home/Readarticle.dart';
import '../../../constant/images.dart';
import '../../../constant/style.dart';
import '../Home/play_game.dart';
import '../Home/referral_task.dart';
import '../../widgets/versionfile.dart';
import '../Home/video.dart';
import '../../../widgets/myspacer.dart';

Widget topOffers() {
  List offers = [
    {"page": const game_page(), "title": "GAMES", "img": game},
    {"page": const video(), "title": "VIDEOS", "img": video_img},
    {"page": const version_file(), "title": "OVERWALLS", "img": overwalls},
    {"page": const referral(), "title": "VISIT & EARN", "img": visitEarn},
    {"page": const referral(), "title": "YOUTUBE", "img": youtube},
    {"page": const read(), "title": "APP OFFER", "img": app_offer},
    {"page": const read(), "title": "FURTUNE SPIN", "img": spin},
    {"page": const read(), "title": "REFER TASK", "img": refer},
  ];

  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: borderColor, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "Top Offers",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                myspacer(0.0, 10.0),
                const Image(
                  image: AssetImage(telescope),
                  width: 30,
                  height: 30,
                )
              ],
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: offers.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                //mainAxisSpacing: 8,
                //crossAxisSpacing: 8
              ),
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: SizedBox(
                    height: 300,
                    width: 200,
                    child: GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                color: borderColor.withOpacity(0.5),
                                width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Text(
                                offers[index]["title"],
                                style: const TextStyle(
                                  fontSize: 10,
                                  //color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                  //textAlign: TextAlign.center,
                                  //padding: EdgeInsets.all(8.0),
                                ),
                              ),
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(offers[index]["img"])),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => offers[index]["page"]),
                        );
                      },
                    ),
                  ),
                );
              }),
        ],
      ),
    ),
  );
}
