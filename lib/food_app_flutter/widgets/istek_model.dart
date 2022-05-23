import 'package:flutter/material.dart';
import 'package:koy_icin_ui/food_app_flutter/styles/app_colors.dart';

class IstekModel extends StatefulWidget {
  final List liste;
  bool controller;
  int index;

  IstekModel({
    super.key,
    required this.liste,
    required this.controller,
    required this.index,
  });

  @override
  State<IstekModel> createState() => _IstekModelState();
}

class _IstekModelState extends State<IstekModel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            widget.liste[widget.index],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Spacer(),
        Checkbox(
          value: widget.controller,
          activeColor: AppColors.primaryColor,
          onChanged: (deger) {
            setState(() {
              widget.controller = !widget.controller;
            });
          },
        ),
      ],
    );
  }
}
