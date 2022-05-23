import 'package:flutter/material.dart';
import 'package:koy_icin_ui/food_app_flutter/screens/explore_page.dart';
import 'package:koy_icin_ui/food_app_flutter/screens/home_page.dart';
import 'package:koy_icin_ui/food_app_flutter/screens/profile_page.dart';
import 'package:koy_icin_ui/food_app_flutter/screens/saved_page.dart';
import 'package:koy_icin_ui/food_app_flutter/styles/app_colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  List<Widget> pages = const [
    Homepage(),
    ExplorePage(),
    SavedPage(
      title: "Henüz Sepetinde Birşey Yok",
      image: "assets/image2.png",
    ),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: const Color.fromARGB(255, 207, 207, 207),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
        child: NavigationBar(
          backgroundColor: const Color.fromARGB(255, 245, 245, 245),
          height: 60,
          animationDuration: const Duration(milliseconds: 600),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          selectedIndex: currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: AppColors.primaryColor,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              label: "Home",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.search,
                color: AppColors.primaryColor,
              ),
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: "Explore",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.favorite,
                color: AppColors.primaryColor,
              ),
              icon: Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
              label: "Saved",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.person,
                color: AppColors.primaryColor,
              ),
              icon: Icon(
                Icons.person_outline_rounded,
                color: Colors.grey,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
