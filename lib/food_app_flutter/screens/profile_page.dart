import 'package:flutter/material.dart';
import 'package:koy_icin_ui/food_app_flutter/models/price_model.dart';
import 'package:koy_icin_ui/food_app_flutter/styles/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              const Text(
                "Most Popular",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              InkWell(
                borderRadius: BorderRadius.circular(70),
                onTap: () {},
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
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
                  ),
                  child: const Icon(
                    Icons.code,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
            ],
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage("assets/image8.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "My cart",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              const SizedBox(width: 20.0),
              Container(
                width: 135,
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/image9.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 220,
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
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "grilled chicken",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "\$50",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Do you have an discount code",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Icon(
                Icons.send,
                color: AppColors.primaryColor,
              )
            ],
          ),
          const Spacer(),
          Container(
            height: 240,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PriceModel(text: "Subtotal", price: "\$60"),
                const PriceModel(text: "Discount", price: "\$50"),
                const PriceModel(text: "Delivery", price: "\$5"),
                const Divider(color: Colors.black45),
                const PriceModel(text: "Total", price: "\$110"),
                const SizedBox(height: 10),
                Align(
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(24),
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: AppColors.primaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Checkout",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
