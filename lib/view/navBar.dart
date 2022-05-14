import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bottom_navigation/controller/navigations.dart';
import 'package:bottom_navigation/view/home_page.dart';
import 'package:bottom_navigation/view/profile_page.dart';
import 'package:bottom_navigation/view/settings.dart';

class NavPage extends StatelessWidget {
  final BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  NavPage({Key? key}) : super(key: key);

  final screens = [
    const HomePage(),
    const ProfilePage(),
    const ReportPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: bottomNavigationController.selectedIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          currentIndex: bottomNavigationController.selectedIndex.value,
          onTap: (index) {
            bottomNavigationController.changeIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
