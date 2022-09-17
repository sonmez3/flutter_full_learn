//ekran olacak
// ekranda 3 buton ve basınca renk değişimi
// seçili olan buton selected icon

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backGroundColor;

// BAŞLANGIÇTA ÇAĞRILIR
  @override
  void initState() {
    super.initState();
    _backGroundColor = widget.initialColor ?? Colors.transparent;
  }

// BİR ÖNCEKİ DURUMLA KARŞLIŞATIRIP DÜZENLER
  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    //debug ile çalıştırmak lazım
    //print ederek bakabiliriz
    //inspect() fonksiyonu içine ne girdiğine bakarız
// adam widget.initialColor yaptı çalıştı
    if (oldWidget.initialColor != _backGroundColor && widget.initialColor != null) {
      changeBacgroundColor(widget.initialColor!);
    }
  }

  void changeBacgroundColor(Color color) {
    setState(() {
      _backGroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: 'red'),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.yellow,
            ),
            label: 'yellow'),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.blue,
            ),
            label: 'blue'),
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBacgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBacgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBacgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
