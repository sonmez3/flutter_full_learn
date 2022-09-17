import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabContorller;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabContorller = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        appBar: AppBar(),
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabContorller.animateTo(_MyTabViews.home.index);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          child: _myTabView(),
        ),
        body: _tabBarView(),
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(
      controller: _tabContorller,
      onTap: (int index) {},
      tabs: _MyTabViews.values
          .map((e) => Tab(
                text: e.name,
              ))
          .toList(),
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(physics: const NeverScrollableScrollPhysics(), controller: _tabContorller, children: const [
      ImageLearn(),
      CardLearn(),
      ImageLearn(),
      CardLearn(),
    ]);
  }
}

enum _MyTabViews { home, settings, favoruite, profile }

extension _MyTabViewExtension on _MyTabViews {}
