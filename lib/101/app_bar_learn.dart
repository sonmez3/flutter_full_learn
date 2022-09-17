import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),

        // elevation: 0, // app bar transparan olur
        //systemOverlayStyle:
        //  SystemUiOverlayStyle.light, // saat pil gibi şeyleri ayarlar
        //actionsIconTheme: IconThemeData(color: Colors.red),
        toolbarTextStyle: const TextStyle(color: Colors.red),
        automaticallyImplyLeading: false, //otomatik back butonu kapatır
        actions: [
          // app barın sağ kısmını ayarlar diyebiliriz
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
