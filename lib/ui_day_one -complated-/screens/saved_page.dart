import 'package:flutter/material.dart';
import 'package:koy_icin_ui/ui_day_one%20-complated-/styles/app_colors.dart';

class SavedPage extends StatelessWidget {
  final String title;
  final String image;

  const SavedPage({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text("Saved Page"),
      ),
    );
  }
}
