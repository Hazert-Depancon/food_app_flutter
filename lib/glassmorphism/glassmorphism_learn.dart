import 'package:flutter/material.dart';
import 'package:koy_icin_ui/Glassmorphism/glassmorphism.dart';

class GlassmorphismLearn extends StatefulWidget {
  const GlassmorphismLearn({Key? key}) : super(key: key);

  @override
  State<GlassmorphismLearn> createState() => _GlassmorphismLearnState();
}

class _GlassmorphismLearnState extends State<GlassmorphismLearn> {
  bool isBlur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Center(
            child: Stack(
              children: [
                SizedBox(
                  child: Image.asset(
                    "assets/image2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isBlur = !isBlur;
                      });
                    },
                    child: GlassMorphism(
                      blur: isBlur ? 20 : 0,
                      opacity: 0.2,
                      child: SizedBox(
                        height: 300,
                        width: 320,
                        child: Column(
                          children: [
                            Text("is blur : $isBlur"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
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
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
