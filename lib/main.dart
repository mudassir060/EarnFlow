import 'package:flutter/material.dart';
import 'Screens/Home/homeScreen.dart';
import 'navigat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Directionality(
          // use this property to change direction in whole app
          // CircularBottomNavigation will act accordingly
          textDirection: TextDirection.ltr,
          child: navigat(),
        ));
  }
}
