import 'package:flutter/material.dart';

class YanindaIyiGider extends StatefulWidget {
  final String title;
  final int icecekFiyat;

  const YanindaIyiGider({
    super.key,
    required this.title,
    required this.icecekFiyat,
  });

  @override
  State<YanindaIyiGider> createState() => _YanindaIyiGiderState();
}

class _YanindaIyiGiderState extends State<YanindaIyiGider> {
  Color color = const Color.fromARGB(255, 227, 227, 227);
  bool controller = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (controller == false) {
            controller = true;
            color = const Color.fromARGB(255, 255, 146, 43).withOpacity(0.9);
          } else {
            controller = false;
            color = const Color.fromARGB(255, 227, 227, 227);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        width: 100,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
            ),
            const SizedBox(width: 5),
            if (controller == true) const Icon(Icons.cancel)
          ],
        ),
      ),
    );
  }
}
