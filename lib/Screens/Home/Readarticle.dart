import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constant/images.dart';
import '../../constant/style.dart';
import '../../widgets/backButton.dart';
import '../../widgets/cardwidget.dart';
import '../../widgets/myspacer.dart';

class read extends StatefulWidget {
  const read({super.key});

  @override
  State<read> createState() => _readState();
}

class _readState extends State<read> {
  @override
  Widget build(BuildContext context) {
    var vheight = MediaQuery.of(context).size.height;
    var vwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                backButon(context),
                myspacer(0.0, 20.0),
                const Text(
                  "Read Article",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            myspacer(20.0, 0.0),
            Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth,
                vheight, "Read for 1 Minutes", true),
            Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth,
                vheight, "Read for 1 Minutes", true),
            Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth,
                vheight, "Read for 1 Minutes", true),
            Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth,
                vheight, "Read for 1 Minutes", true),
            Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth,
                vheight, "Read for 1 Minutes", true),
          ],
        ),
      ),
    );
  }
}
