import 'package:flutter/material.dart';

// BİR DAHA ÇALIŞ BURAYI !!

//Sayfa açılırken chech etme ve data kontrol etme
//6. video 51. dakika setting set

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

//init state gibi çalışır ama daha sonra
//sayfa yeniden update edilirse çağrılır

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }

// eski mesaj ile aynı değilse düzenler detaylı bak!!
//6. video 1.01 saat
  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

  // başka bi sayfa açılınca çalışır
  // kullanım amacı :
  // diğer sayfaya giderken sıfırlanması gereken yerleri sıfırlamak için kullanılır
  @override
  void dispose() {
    super.dispose();
    print('alo');
  }

  //mesaj tekse yanına tek, yoksa çift yaz
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computeName();
    print('a');
  }

// niye hep tek yazıyor bak
  void _computeName() {
    if (_isOdd) {
      _message += " cift";
    } else {
      _message += " tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
