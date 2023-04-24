import 'package:flutter/material.dart';

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
                  right: 3,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
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
            const Center(child: Text("profileScreen")),
          ],
        ),
      ),
    );
  }
}
