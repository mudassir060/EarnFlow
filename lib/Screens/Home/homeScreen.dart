// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../../constant/images.dart';
import '../../constant/style.dart';
import '../../widgets/dashboard.dart';
import '../../widgets/myspacer.dart';
import 'widget/topBar.dart';
import 'widget/topOffers.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List Rewards = [
    {"img1": reward_img1},
    {"img1": reward_img2},
    {"img1": reward_img1},
    {"img1": reward_img1},
    {"img1": reward_img1},
    {"img1": reward_img1},
  ];

  @override
  Widget build(BuildContext context) {
    var vheight = MediaQuery.of(context).size.height;
    var vwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        topBar(),
        myspacer(5.0, 0.0),
        const Image(image: AssetImage(slider_img)),
        myspacer(5.0, 0.0),
        topOffers(),
        //  //  //  //  //  //  //  //  // Top Game //  //  //  //  //  //  //  //
        Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: borderColor, width: 1)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Row(
                          children: [
                            const Text(
                              "Top Games",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            myspacer(0.0, 10.0),
                            const Image(
                              image: AssetImage(game),
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 140,
                        width: vwidth,
                        child: ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.all(8.0),
                            itemCount: 15,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Stack(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: SizedBox(
                                              width: 300,
                                              height: 100,
                                              //color: Colors.black,
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: const BorderSide(
                                                        color: borderColor,
                                                        width: 1)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Row(
                                              children: [
                                                const Positioned(
                                                    left: 30,
                                                    //top: 20,
                                                    child: Image(
                                                      image: AssetImage(game1),
                                                      width: 100,
                                                      height: 100,
                                                    )),
                                                myspacer(0.0, 10.0),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                        "Push Royale Multiplayer"),
                                                    Text(
                                                        "Playn & earn Upto 5 coins")
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        left: 40,
                                        top: 75,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              height: 20,
                                              width: 40,
                                              child: Center(
                                                  child: Text(
                                                "#$index",
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ),
                                            myspacer(0.0, 150.0),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              height: 20,
                                              width: 60,
                                              child: const Center(
                                                  child: Text(
                                                "play",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              );
                            }),
                      )
                    ]))),
        //  //  //  //  //  //  //  //  // Top Game //  //  //  //  //  //  //  //

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: borderColor, width: 1)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Daily Rewards",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          myspacer(0.0, 10.0),
                          const Image(
                            image: AssetImage(reward_symobol),
                            width: 30,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: Rewards.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 6,
                          //mainAxisSpacing: 2,
                          //crossAxisSpacing:2
                        ),
                        itemBuilder: (BuildContext context, int index1) {
                          return Row(
                            children: [Image.asset(Rewards[index1]["img1"])],
                          );
                        }),
                  ])),
        ),
        Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: borderColor, width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Leader-Board",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          myspacer(0.0, 10.0),
                          const Image(
                            image: AssetImage(batch_img),
                            width: 30,
                            height: 30,
                          ),
                          myspacer(0.0, 130.0),
                          Text("See All"),
                        ],
                      ),
                    ),
                    dash_widget(leader_img, "Ali Khan", "No.1", vwidth, vheight,
                        "15421(Pakistan)"),
                    dash_widget(leader_img, "Ali Khan", "No.1", vwidth, vheight,
                        "15421(Pakistan)"),
                    dash_widget(leader_img, "Ali Khan", "No.1", vwidth, vheight,
                        "15421(Pakistan)"),
                    dash_widget(leader_img, "Ali Khan", "No.1", vwidth, vheight,
                        "15421(Pakistan)"),
                  ],
                ))),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "homeScreen,Leader",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        myspacer(30.0, 0.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("status"), Text("Profile")],
        )
      ]))),
    );
  }
}
