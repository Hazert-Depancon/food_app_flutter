import 'package:flutter/material.dart';
import 'package:koy_icin_ui/food_app_flutter/screens/image_detail_page.dart';
import 'package:koy_icin_ui/food_app_flutter/styles/app_colors.dart';
import 'package:koy_icin_ui/food_app_flutter/widgets/istek_model.dart';
import 'package:koy_icin_ui/food_app_flutter/widgets/yaninda_iyi_gider.dart';

// ignore: must_be_immutable
class DetailPage extends StatefulWidget {
  final String image;
  final String title;
  final String aciklama;
  final List liste;
  int fiyat;

  DetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.aciklama,
    required this.liste,
    required this.fiyat,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool checkBoxController1 = true;
  bool checkBoxController2 = true;
  bool checkBoxController3 = true;
  bool checkBoxController4 = true;
  bool checkBoxController5 = true;
  int sayi = 1;
  int yeniFiyat = 0;

  final int cola = 30;
  int fanta = 20;
  int fuistea = 10;
  int sogukcay = 30;
  int elmaSuyu = 50;

  // ignore: non_constant_identifier_names
  final SiparisiTamamlaSnackbar = SnackBar(
    duration: const Duration(seconds: 1),
    content: Row(
      children: const [
        Icon(
          Icons.check_circle_outline_sharp,
          color: Colors.white,
        ),
        SizedBox(width: 10.0),
        Text("Siparişiniz Alındı"),
      ],
    ),
    backgroundColor: Colors.green,
    action: SnackBarAction(
      label: "",
      textColor: Colors.white,
      onPressed: () {},
    ),
  );

  // ignore: non_constant_identifier_names
  final SepeteEklendiSnackbar = SnackBar(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  widget.title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageDetailPage(
                                image: widget.image,
                                title: widget.title,
                              )));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                        child: Text(
                          widget.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SepeteEklendiSnackbar);
                          },
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                widget.aciklama,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Hemen Al, Hemen Ye!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            IstekModel(
              liste: widget.liste,
              controller: checkBoxController1,
              index: 0,
            ),
            IstekModel(
              liste: widget.liste,
              controller: checkBoxController2,
              index: 1,
            ),
            IstekModel(
              liste: widget.liste,
              controller: checkBoxController3,
              index: 2,
            ),
            IstekModel(
              liste: widget.liste,
              controller: checkBoxController4,
              index: 3,
            ),
            IstekModel(
              liste: widget.liste,
              controller: checkBoxController5,
              index: 4,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Yanında iyi gider",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 20.0),
                    YanindaIyiGider(
                      title: "CocoCola",
                      icecekFiyat: cola,
                    ),
                    const SizedBox(width: 20.0),
                    YanindaIyiGider(
                      title: "Fanta",
                      icecekFiyat: fanta,
                    ),
                    const SizedBox(width: 20.0),
                    YanindaIyiGider(
                      title: "Fuistea",
                      icecekFiyat: fuistea,
                    ),
                    const SizedBox(width: 20.0),
                    YanindaIyiGider(
                      title: "Soğukçay",
                      icecekFiyat: sogukcay,
                    ),
                    const SizedBox(width: 20.0),
                    YanindaIyiGider(
                      title: "Elma Suyu",
                      icecekFiyat: elmaSuyu,
                    ),
                    const SizedBox(width: 20.0),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Sayı",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                    ),
                    color: Colors.grey[300],
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (sayi <= 1) {
                          sayi = sayi;
                          yeniFiyat = yeniFiyat;
                        } else {
                          sayi--;
                          yeniFiyat = yeniFiyat - widget.fiyat;
                        }
                      });
                    },
                    icon: const Icon(Icons.remove),
                  ),
                ),
                Container(
                  width: 60,
                  height: 70,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      sayi.toString(),
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                    color: Colors.grey[300],
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (sayi >= 9) {
                          sayi = sayi;
                          yeniFiyat = yeniFiyat;
                        } else if (sayi == 1) {
                          sayi++;
                          yeniFiyat = widget.fiyat + widget.fiyat;
                        } else {
                          sayi++;
                          yeniFiyat = yeniFiyat + widget.fiyat;
                        }
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Toplam",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                yeniFiyat == 0 ? widget.fiyat.toString() : yeniFiyat.toString(),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Center(
              child: InkWell(
                borderRadius: BorderRadius.circular(24),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SiparisiTamamlaSnackbar,
                  );
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColors.primaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Siparişi Tamamla",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
