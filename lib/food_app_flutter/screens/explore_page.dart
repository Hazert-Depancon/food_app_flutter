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
                "??nerilen Yemekler",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SpecialModel(
              image: "assets/image10.png",
              title: "T??rk kebab??",
              aciklama:
                  "T??rk kebab?? bir ??ok ki??inin severek yedi??i etten yap??lan yemektir.",
              liste: [
                "Patates k??zartmas??",
                "Biber",
                "Domates",
                "Tur??u",
                "??zel Sos",
              ],
              fiyat: 40,
            ),
            const SpecialModel(
              image: "assets/image11.png",
              title: "Vegan pizza",
              aciklama: "Vegan ??r??nleri i??eren pizza.",
              liste: [
                "Maydanoz",
                "K??rm??z?? biber",
                "Ye??il biber",
                "Tereya??",
                "Sucuk",
              ],
              fiyat: 60,
            ),
            const SpecialModel(
              image: "assets/image12.png",
              title: "Yumurta",
              aciklama: "Ha??lanm???? yumurta",
              liste: [
                "Maydanoz",
                "K??rm??z?? biber",
                "Ye??il biber",
                "Tereya??",
                "??zel Sos",
              ],
              fiyat: 10,
            ),
            const SpecialModel(
              image: "assets/image3.png",
              title: "Beef burger",
              aciklama: "Sade ve s??cak bir tavuklu burger.",
              liste: [
                "Ket??ap",
                "Mayonez",
                "Hardal",
                "Tur??u",
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
