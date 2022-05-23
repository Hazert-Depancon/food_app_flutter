import 'package:flutter/material.dart';

class ImageDetailPage extends StatefulWidget {
  final String image;
  final String title;

  const ImageDetailPage({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  State<ImageDetailPage> createState() => _ImageDetailPageState();
}

class _ImageDetailPageState extends State<ImageDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 59, 59, 59),
        elevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 59, 59, 59),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            widget.title,
            style: const TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

///todo: Kaydırarak yeni resimler oluşturacağız. 