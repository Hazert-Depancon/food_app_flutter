import 'package:flutter/material.dart';
import 'package:koy_icin_ui/food_app_flutter/models/special_model.dart';
import 'package:koy_icin_ui/food_app_flutter/styles/app_colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 100),
            Center(
              child: Text(
                "Todays's Special food",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            SpecialModel(
              image: "assets/image3.png",
              title: "Beef burger",
              aciklama:
                  "Beef Burger 100 gr dana eti ve isteğe bağli onlarca kişisel tercihi ile inanilmaz bir lezzettir!",
              liste: [
                "Ketçap",
                "Mayonez",
                "Domates",
                "Turşu",
                "Özel Sos",
              ],
              fiyat: 60,
            ),
            SpecialModel(
              image: "assets/image4.png",
              title: "Sunny side up with avcodo",
              aciklama: "Güneşte pişirilmiş yumurtali menemen (!!!soğansiz!!!)",
              liste: [
                "Sosis",
                "Mayonez",
                "Domates",
                "Tereyağ",
                "Süt",
              ],
              fiyat: 70,
            ),
            SpecialModel(
              image: "assets/image5.png",
              title: "Sandwich with stawberry jam",
              aciklama: "Sandiviç işte ne bakiyon",
              liste: [
                "Marul",
                "Domates",
                "Turşu",
                "Hardal",
                "Özel Sos",
              ],
              fiyat: 50,
            ),
            SpecialModel(
              image: "assets/image6.png",
              title: "Cheese backed pizza",
              aciklama: "Pizza işte ne bakiyon",
              liste: [
                "Ketçap",
                "Mayonez",
                "Dereotu",
                "Turşu",
                "Mantar",
              ],
              fiyat: 20,
            ),
            SpecialModel(
              image: "assets/image7.png",
              title: "Chicken Biriyani",
              aciklama: "Tavuk göğsü 300 gram",
              liste: [
                "Meze",
                "Marul",
                "Hardal",
                "Turşu",
                "Özel Sos",
              ],
              fiyat: 30,
            ),
          ],
        ),
      ),
    );
  }
}
