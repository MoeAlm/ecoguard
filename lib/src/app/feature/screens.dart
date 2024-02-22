import 'package:ecoguard/src/app/feature/home/home_screen.dart';
import 'package:ecoguard/src/app/feature/reporting/reporting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int selectedScreen = 0;
  var heart = false;
  PageController controller = PageController();
  List<Widget> screens = [
    const HomeScreen(),
    const ReportingScreen(),
    const Scaffold(),
    const Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedScreen],
      bottomNavigationBar: StylishBottomBar(
        option: AnimatedBarOptions(
          // iconSize: 32,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.animated,
          opacity: 0.3,
        ),
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.4),
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.house_rounded,
            ),
            selectedIcon: const Icon(
              Icons.house_outlined,
            ),
            selectedColor: Colors.white,
            title: const Text('Home'),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.report_gmailerrorred,
            ),
            selectedIcon: const Icon(Icons.report_gmailerrorred),
            selectedColor: Colors.white,
            title: const Text('Report'),
          ),
          BottomBarItem(
              icon: const Icon(
                CupertinoIcons.chat_bubble,
              ),
              selectedColor: Colors.white,
              selectedIcon: const Icon(
                Icons.style,
              ),
              title: const Text('Chat')),
          BottomBarItem(
            icon: const Icon(
              CupertinoIcons.person_3_fill,
            ),
            selectedIcon: const Icon(
              CupertinoIcons.person_3,
            ),
            selectedColor: Colors.white,
            title: const Text('Profile'),
          ),
        ],
        // hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selectedScreen,
        onTap: (index) {
          // controller.jumpToPage(index);
          setState(() {
            selectedScreen = index;
          });
        },
      ),
    );
  }
}
