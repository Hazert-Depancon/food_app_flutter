import 'package:flutter/material.dart';
import 'package:koy_icin_ui/food_app_flutter/styles/app_colors.dart';
import 'package:koy_icin_ui/food_app_flutter/widgets/bottom_nav_bar.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Order your\nFavourite",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Food",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "elit, sed do eiusmod tempo ullamco laboris nisi ut",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "aliquip ex ea commodo consequat.",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomNavBar(),
                          ),
                          (route) => false);
                    },
                    child: const Text(
                      "SKIP",
                      style: TextStyle(color: Colors.black54, fontSize: 20.0),
                    ),
                  ),
                ),
                const Spacer(),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavBar(),
                        ),
                        (route) => false);
                  },
                  color: AppColors.primaryColor,
                  elevation: 0.0,
                  shape: const CircleBorder(),
                  height: 60.0,
                  child: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
