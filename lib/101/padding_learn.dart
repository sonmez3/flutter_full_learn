import 'package:flutter/material.dart';

//padding özetle widgetların etrafından boşluk bırakamayı sağlar
// sized box atıp ayırmak yerine bunu yapmak daha sağlıklı
class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                height: 100,
                //width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                padding:
                    EdgeInsets //bazı widgetların kendi padding componenti var
                        .zero,
                color: Colors.white,
                height: 100,
                //width: 200,
              ),
            ),
            Padding(
              padding: ProjectPadding.pagePadingRightOnly +
                  ProjectPadding
                      .pagePaddingVertical, //toplama özelliği ile ikisi de çalışabilir
              child: const Text('ali'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePadingRightOnly = EdgeInsets.only(right: 20);
}
