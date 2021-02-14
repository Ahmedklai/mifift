import 'package:flutter/material.dart';
import 'package:mifift/ui/home/Pages/challengs/ranking_page.dart';
import 'ranking_element.dart';

class RankingList extends StatelessWidget {
  final String type;

  const RankingList({Key key, this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RankingElement(
          img: 'lib/assets/run.png',
          name: 'klai ahmed',
          rank: 1,
          timing: '12:00:00',
        ),
        RankingElement(
          img: 'lib/assets/run.png',
          name: 'klai ahmed',
          rank: 1,
          timing: '12:00:00',
        ),
        RankingElement(
          img: 'lib/assets/run.png',
          name: 'klai ahmed',
          rank: 1,
          timing: '12:00:00',
        ),
      ],
    );
  }
}
