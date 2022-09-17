import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 400,
              width: 300,
              child: PngImage(name: ImageItems().appleBookWithoutpath)),
//Image.network internetten bağlantı adresinden çekip yansıtır
//4. video sonu error builder image network bak
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple2.png";
  final String appleBook = "assets/png/apple.png";
  final String appleBookWithoutpath = "apple";
}

//ımage alırken widgeti böyle yapıp içinde de name tanımlayıp path i bir kez göstererek
//her seferinde göstermekten kurtuluyoruz

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
