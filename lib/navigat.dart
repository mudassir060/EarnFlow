import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

import 'Screens/Home/homeScreen.dart';
import 'Screens/Leaderboard/LeaderboardScreen.dart';
import 'Screens/Profile/profileScreen.dart';

class navigat extends StatefulWidget {
  navigat({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;

  @override
  _navigatState createState() => _navigatState();
}

class _navigatState extends State<navigat> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    TabItem(
      Icons.home,
      "Home",
      Colors.blue,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
      ),
    ),
    TabItem(
      Icons.layers,
      "Leaderboard",
      Colors.orange,
      labelStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    TabItem(
      Icons.person,
      "Profile",
      Colors.red,
      circleStrokeColor: Colors.black,
    ),
  ]);

  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
            child: bodyContainer(),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget bodyContainer() {
    Widget page;
    switch (selectedPos) {
      case 0:
        page = const homeScreen();
        break;
      case 1:
        page = const LeaderboardScreen();
        break;
      case 2:
        page = const profileScreen();
        break;
      default:
        page = const homeScreen();
        break;
    }

    return GestureDetector(
      child: page,
      onTap: () {
        if (_navigationController.value == tabItems.length - 1) {
          _navigationController.value = 0;
        } else {
          _navigationController.value = _navigationController.value! + 1;
        }
      },
    );
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      selectedPos: selectedPos,
      barHeight: bottomNavBarHeight,
      // use either barBackgroundColor or barBackgroundGradient to have a gradient on bar background
      barBackgroundColor: Colors.white,
      // barBackgroundGradient: LinearGradient(
      //   begin: Alignment.bottomCenter,
      //   end: Alignment.topCenter,
      //   colors: [
      //     Colors.blue,
      //     Colors.red,
      //   ],
      // ),
      backgroundBoxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black45, blurRadius: 10.0),
      ],
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int? selectedPos) {
        setState(() {
          this.selectedPos = selectedPos ?? 0;
          print(_navigationController.value);
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }
}








// import 'package:earnflow/constant/Icons.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:stylish_bottom_bar/model/bar_items.dart';
// import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

// class navigat extends StatefulWidget {
//   const navigat({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<navigat> createState() => _navigatState();
// }

// class _navigatState extends State<navigat> {
//   dynamic selected;
//   PageController controller = PageController();

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true, //to make floating action button notch transparent

//       //to avoid the floating action button overlapping behavior,
//       // when a soft keyboard is displayed
//       // resizeToAvoidBottomInset: false,

//       bottomNavigationBar: StylishBottomBar(
//         items: [
//           BottomBarItem(
//               icon: Image.asset(dashboard),
//               selectedIcon: const Icon(Icons.house_rounded),
//               selectedColor: Colors.teal,
//               backgroundColor: Colors.tealAccent,
//               title: const Text('Home')),
//           BottomBarItem(
//               icon: Image.asset(contactP),
//               selectedIcon: const Icon(Icons.star_rounded),
//               selectedColor: Colors.green,
//               backgroundColor: Colors.lightGreenAccent,
//               title: const Text('Star')),
//           BottomBarItem(
//               icon: const Icon(Icons.style_outlined),
//               selectedIcon: const Icon(Icons.style),
//               backgroundColor: Colors.amber,
//               selectedColor: Colors.deepOrangeAccent,
//               title: const Text('Style')),
//           BottomBarItem(
//               icon: Image.asset(profile),
//               selectedIcon: const Icon(Icons.person),
//               backgroundColor: Colors.purpleAccent,
//               selectedColor: Colors.deepPurple,
//               title: const Text('Profile')),
//         ],
//         hasNotch: true,
//         fabLocation: StylishBarFabLocation.center,
//         currentIndex: selected ?? 0,
//         onTap: (index) {
//           controller.jumpToPage(index);
//           setState(() {
//             selected = index;
//           });
//         },
//         option: AnimatedBarOptions(
//           // iconSize: 32,
//           barAnimation: BarAnimation.liquid,
//           iconStyle: IconStyle.animated,
//           // opacity: 0.3,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {setState(() {
//             selected = 4;
//         });},
//         backgroundColor: Colors.white,
//         child: Image.asset(leaderboard),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       body: SafeArea(
//         child: PageView(
//           controller: controller,
//           children: const [
//             Center(child: Text('Home')),
//             Center(child: Text('Star')),
//             Center(child: Text('Style')),
//             Center(child: Text('Profile')),
//             Center(child: Text('Leaderboard')),
//           ],
//         ),
//       ),
//     );
//   }
// }
