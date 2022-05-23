import 'package:flutter/material.dart';
import 'package:koy_icin_ui/food_app_flutter/screens/detail_page.dart';
import 'package:koy_icin_ui/food_app_flutter/styles/app_colors.dart';

class SpecialModel extends StatelessWidget {
  final String image;
  final String title;
  final String aciklama;
  final List liste;
  final int fiyat;

  const SpecialModel({
    Key? key,
    required this.image,
    required this.title,
    required this.aciklama,
    required this.liste,
    required this.fiyat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final snackbar = SnackBar(
      duration: const Duration(seconds: 1),
      content: Row(
        children: const [
          Icon(
            Icons.check,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Text("Adding shopping bag sucess."),
        ],
      ),
      backgroundColor: Colors.green,
      action: SnackBarAction(
        label: "",
        textColor: Colors.white,
        onPressed: () {},
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailPage(
                        image: image,
                        title: title,
                        aciklama: aciklama,
                        liste: liste,
                        fiyat: fiyat,
                      )));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 125,
              height: 125,
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
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                ),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 250,
              height: 125,
              decoration: const BoxDecoration(
                boxShadow: [
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
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: SizedBox(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
