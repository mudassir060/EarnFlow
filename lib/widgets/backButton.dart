import 'package:flutter/material.dart';

import '../constant/style.dart';

Widget backButon(context) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(
      Icons.arrow_back_ios,
      color: IconColor,
    ),
  );
}
