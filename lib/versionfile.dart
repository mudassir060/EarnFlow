// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:login_project/constant/images.dart';
import 'package:login_project/widgets/mybutton.dart';
import 'package:login_project/widgets/myspacer.dart';

class version_file extends StatelessWidget {
  const version_file({super.key});

  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top:250),
          child: Center(
            child: Image(
              image: AssetImage(download),
              width: 200,
              height: 200,
            ),
          ),
        ),
        myspacer(10.0, 0.0),
        const Text("Version 2.1 is available"),
        myspacer(190.0, 0.0),
        mybutton(
            width: vwidth - 80,
            function: () {
              
            },
            name: "Download",
            color: true,
            textcolor: true),
      ],
    ));
  }
}
