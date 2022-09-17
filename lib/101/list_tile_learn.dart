import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const RandomImage(),
                  //dense: true, // sıkıştırma
                  //contentPadding: EdgeInsets.zero,
                  onTap: () {},
                  subtitle: const Text(
                    'How do you use your card',
                  ),
                  minVerticalPadding: 0,
                  dense: true,
                  leading: Container(
                      alignment: Alignment.topCenter,
                      height: 200,
                      width: 30,
                      color: Colors.red,
                      child: const Icon(Icons.money)),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
