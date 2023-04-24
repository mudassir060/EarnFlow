// ignore_for_file: file_names

import 'package:earnflow/widgets/myspacer.dart';
import 'package:flutter/material.dart';
import '../constant/images.dart';

Widget loadingError() {
  return Card(
    child: SizedBox(
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            fail,
            height: 100,
          ),
          myspacer(10.0, 0.0),
          const Text(
            "Unable to Load",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
