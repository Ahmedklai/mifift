import 'package:flutter/material.dart';
import 'package:mifift/presentation/home/home.dart';
import 'package:mifift/widgets/ranking_list.dart';

class RankingPage extends StatefulWidget {
  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(
      text: 'Challenge 1',
    ),
    Tab(
      text: 'Challenge 2',
    ),
    Tab(
      text: 'Challenge 2',
    ),
    Tab(
      text: 'Challenge 2',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        bottom: TabBar(
          labelColor: Theme.of(context).primaryColor,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Theme.of(context).hintColor,
          isScrollable: true,
          onTap: (index) {
            // Should not used it as it only called when tab options are clicked,
            // not when user swapped
          },
          controller: _controller,
          tabs: list,
        ),
        title: Text('Run ranking'),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Center(
              child: Column(
            children: [
              RankingList(
                type: 'Running',
              ),
            ],
          )),
          Center(
              child: RankingList(
            type: 'Running',
          )),
          Center(
              child: RankingList(
            type: 'Running',
          )),
          Center(
              child: RankingList(
            type: 'Running',
          )),
        ],
      ),
    );
  }
}
