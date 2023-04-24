import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/style.dart';

Widget mybutton(
    {required width,
    required Null Function() function,
    required String name,
    required bool color,
    required bool textcolor}) {
  return SizedBox(
    width: width,
    height: 50,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(color ? primaryColor : whiteColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: primaryColor),
          ),
        ),
      ),
      onPressed: function,
      child: Text(
        name,
        style: TextStyle(
            color: textcolor ? whiteColor : IconColor,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}
// import 'package:flutter/material.dart';
// import 'package:neopop/neopop.dart';
// import 'package:neopop/utils/color_utils.dart';
// import 'package:neopop/utils/constants.dart';

// import '../constant/style.dart';

// Widget mybutton(
//     {required width,
//     required Null Function() function,
//     required String name,
//     required bool color,
//     required bool textcolor}) {
//   return NeoPopButton(
//     color: color ? primaryColor : whiteColor,
//     // enabled: false,
//     bottomShadowColor: ColorUtils.getVerticalShadow(basicColor).toColor(),
//     rightShadowColor: ColorUtils.getHorizontalShadow(basicColor).toColor(),
//     // animationDuration: 0.2,
//     depth: kButtonDepth,
//     onTapUp: function,
//     border: Border.all(
//       color: primaryColor,
//       style: BorderStyle.solid,
//       width: 5,
//     ),
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(name,
//               style: TextStyle(
//                   color: textcolor ? whiteColor : IconColor,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold)),
//         ],
//       ),
//     ),
//   );
// }
