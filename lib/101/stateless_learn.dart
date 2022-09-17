import 'package:flutter/material.dart';

//stateless sadece gösterme içeren ve aksiyon olmayan şeylerde kullanılır

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  final String text2 = 'baran1';

  // textler yukarıda tutulursa daha verimli temiz bir kod olur

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            'data',
            style: Theme.of(context).textTheme.headline3,
          ),
          TitleTextWidget(text: text2),
          _emptyBox(),
          const TitleTextWidget(text: 'baran2'),
          const TitleTextWidget(text: 'baran3'),
          _emptyBox(),
          const TitleTextWidget(text: 'baran4'),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

//çok komplex olmazsa method olarak tutulabilir
  SizedBox _emptyBox() => const SizedBox(
        height: 20,
      );
}

// _ isim başına bunu koymak private
// extract widget
class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
