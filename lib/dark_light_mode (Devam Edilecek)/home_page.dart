import 'package:flutter/material.dart';
import 'package:koy_icin_ui/dark_light_mode%20(Devam%20Edilecek)/button.dart';

class DarkLightMode extends StatefulWidget {
  const DarkLightMode({Key? key}) : super(key: key);

  @override
  State<DarkLightMode> createState() => DarkLightModeState();
}

class DarkLightModeState extends State<DarkLightMode> {
  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? "Dark Theme"
        : "Light Theme";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Theme Mode"),
        actions: const [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Text(
          "App Theme: $text",
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
