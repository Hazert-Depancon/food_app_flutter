import 'package:flutter/material.dart';
import 'package:koy_icin_ui/food_app_flutter/styles/app_colors.dart';
import 'package:koy_icin_ui/food_app_flutter/widgets/special_model.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Align(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 30.0,
                      offset: Offset(20, 20),
                      color: Colors.grey,
                    ),
                    BoxShadow(
                      blurRadius: 30.0,
                      offset: Offset(-20, -20),
                      color: Colors.white38,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                width: 350,
                height: 50,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextField(
                    cursorColor: AppColors.primaryColor,
                    decoration: InputDecoration(
                      hintText: "Search your favorite foods",
                      icon: Icon(
                        Icons.search,
                        color: Colors.black45,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                "Önerilen Yemekler",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SpecialModel(
              image: "assets/image3.png",
              title: "Beef Burger",
              aciklama:
                  "Beef Burger 100 gr dana eti ve isteğe bağli onlarca kişisel tercihi ile inanilmaz bir lezzettir!",
              liste: [
                "Ketçap",
                "Mayonez",
                "Domates",
                "Turşu",
                "Özel Sos",
              ],
              fiyat: 40,
            ),
            const SpecialModel(
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
              fiyat: 60,
            ),
            const SpecialModel(
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
              fiyat: 10,
            ),
            const SpecialModel(
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
          ],
        ),
      ),
    );
  }
}
