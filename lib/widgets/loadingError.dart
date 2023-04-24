// ignore_for_file: file_names

import 'package:earnflow/widgets/myspacer.dart';
import 'package:flutter/material.dart';
import '../constant/images.dart';

Widget loadingError() {
  return Card(
    child: Column(
      children: [
        Image.asset(fail),
        myspacer(10, 0),
        const Text("Unable to Load"),
      ],
    ),
  );
}
