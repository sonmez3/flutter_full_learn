import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _categoryCard(model: _items[index]);
        },
      ),
    );
  }
}

// ignore: camel_case_types
class _categoryCard extends StatelessWidget {
  const _categoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: PaddingUtility().paddingBottom,
        elevation: 20,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(children: [
            Image.asset(
              _model.imagePath,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(_model.title),
                  Text('${_model.price} Eth'),
                ],
              ),
            )
          ]),
        ));
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.price, required this.title});
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImages.imageCollection, price: 3.4, title: 'AbstractArt'),
      CollectionModel(imagePath: ProjectImages.imageCollection, price: 3.4, title: 'AbstractArt2'),
      CollectionModel(imagePath: ProjectImages.imageCollection, price: 3.4, title: 'AbstractArt3'),
      CollectionModel(imagePath: ProjectImages.imageCollection, price: 3.4, title: 'AbstractArt4'),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10.0);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20.0);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollection = 'assets/png/card.png';
}
