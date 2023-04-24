// ignore_for_file: file_names

import 'package:earnflow/widgets/myspacer.dart';
import 'package:flutter/material.dart';
import '../constant/images.dart';

Widget loadingData() {
  return Card(
    child: SizedBox(
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            loading,
            height: 100,
          ),
        ],
      ),
    ),
  );
}
