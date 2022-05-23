import 'package:flutter/material.dart';

class PriceModel extends StatelessWidget {
  final String text;
  final String price;

  const PriceModel({Key? key, required this.text, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
            const Spacer(),
            Text(
              price,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w800,
                fontSize: 17,
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
