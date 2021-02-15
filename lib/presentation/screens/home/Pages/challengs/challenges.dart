import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../widgets/challenge_carousel.dart';
import '../../../../widgets/ranking_list.dart';
import 'ranking_page.dart';


class Challenges extends StatefulWidget {
  @override
  _ChallengesState createState() => _ChallengesState();
}

class _ChallengesState extends State<Challenges> {
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: data.size.height * 0.1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Challenges',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
            ),
            SizedBox(height: data.size.height * 0.02),
            ChallengeCarousel(),
            SizedBox(height: data.size.height * 0.07),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Text(
                'My challenges',
                style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
            ),
            SizedBox(height: data.size.height * 0.02),
            ChallengeCarousel(),
            SizedBox(height: data.size.height * 0.07),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Text(
                'Shop challenges',
                style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
            ),
            SizedBox(height: data.size.height * 0.02),
            ChallengeCarousel(),
            SizedBox(height: data.size.height * 0.035),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22.0, vertical: 22.0),
              child: Text(
                'Ranking',
                style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
            ),
            RankingListTitle(
              type: 'Marches(overall)',
            ),
            RankingList(
              type: 'Marches(overall)',
            ),
            SizedBox(height: data.size.height * 0.035),
            RankingListTitle(
              type: 'Running(overall)',
            ),
            RankingList(
              type: 'Running(overall)',
            )
          ],
        ),
      ),
    );
  }
}

class RankingListTitle extends StatelessWidget {
  final String type;
  const RankingListTitle({
    this.type,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            type,
            style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Theme.of(context).hintColor,
                ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (context) => RankingPage()),
              );
            },
            child: Text(
              'See all',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.underline,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
