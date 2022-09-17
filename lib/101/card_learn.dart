import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            //color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('ali')),
            ),
          ),
          _CustomCard(
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('ali')),
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            //shape: ProjectMargins.roundedRectangleBorder,
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  //101 seviyesinde burdan da tanımlanabilir
}

class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);

  final Widget child;

  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  //shape i dışarı vererek temiz kodlar yazabiliriz
  //child da dışarıdan verilebilir 4. video 35. dakikadan itibaren bak

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      //color: Colors.white,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}

//Borders
//stadiumBorder(),circleBorder(),roundenrectangleborder()
