import 'package:earnflow/constant/style.dart';
import 'package:earnflow/widgets/myspacer.dart';
import 'package:flutter/material.dart';

import '../../constant/Icons.dart';
import '../../constant/images.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            myspacer(60.0, 0.0),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 55,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage(profile),
                  ),
                ),
                Positioned(
                  bottom: 3,
                  right: 2,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: primaryColor,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            myspacer(10.0, 0.0),
            const Text("Abc"),
            const Text("Abc@gmail.com"),
            myspacer(20.0, 0.0),
            profileList("Contact us", contactP, () {}),
            profileList("Privacy Policy", privacy, () {}),
            profileList("White paper", whitepaper, () {}),
            profileList("Rate us", rateus, () {}),
            myspacer(30.0, 0.0),
            const Text("Social Links"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  twitter,
                  width: 100,
                ),
                Image.asset(
                  facebook,
                  width: 100,
                ),
                Image.asset(
                  discord,
                  width: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget profileList(title, img, fun) {
  return Padding(
    padding: const EdgeInsets.only(left: 4.0, right: 4, bottom: 4),
    child: Card(
      child: ListTile(
        leading: Image.asset(
          img,
        ),
        title: Text(title),
        trailing: IconButton(
            onPressed: fun, icon: const Icon(Icons.arrow_forward_ios)),
      ),
    ),
  );
}
