// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../../constant/images.dart';
import '../../widgets/backButton.dart';
import '../../widgets/cardwidget.dart';
import '../../widgets/myspacer.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    var vheight = MediaQuery.of(context).size.height;
    var vwidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  backButon(context),
                  myspacer(0.0, 20.0),
                  const Text(
                    "Videos",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            myspacer(20.0, 0.0),
            Card_widget(addmob, "AdMob", "2", vwidth, vheight, "", false),
            Card_widget(
                app_lovin, "Applovin", "0.5", vwidth, vheight, "", false),
            Card_widget(lift_off, "Liftoff", "0.5", vwidth, vheight, "", false),
            Card_widget(
                add_Colony, "AdColony", "0.5", vwidth, vheight, "", false),
            Card_widget(unity, "Unity", "2", vwidth, vheight, "", false)
          ],
        ),
      ),
    );
  }
}
