import 'package:flutter/material.dart';


import '../../../../widgets/button.dart';
import '../../../../widgets/ranking_list.dart';
import '../challengs/challenges.dart';
import '../challengs/ranking_page.dart';

class CelebrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: data.size.height * 0.05),
            Center(
              child: Stack(
                children: [
                  Container(
                      height: data.size.height * 0.65,
                      width: data.size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('lib/assets/Conffeti.png'),
                        ),
                      )),
                  Column(
                    children: [
                      Container(
                          height: data.size.height * 0.2,
                          width: data.size.height,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/assets/Logo.png'),
                            ),
                          )),
                      Text(
                        'GONGRATULATIONS',
                        style: Theme.of(context).textTheme.headline1.copyWith(
                              color: Theme.of(context).hintColor,
                            ),
                      ),
                      SizedBox(height: data.size.height * 0.025),
                      Center(
                        child: Text(
                          'You made it , challenge completed',
                          style: Theme.of(context).textTheme.headline2.copyWith(
                                color: Theme.of(context).hintColor,
                              ),
                        ),
                      ),
                      SizedBox(height: data.size.height * 0.05),
                      Text(
                        '4th place',
                        style: Theme.of(context).textTheme.headline1.copyWith(
                              color: Theme.of(context).hintColor,
                              fontSize: data.size.height * 0.07,
                            ),
                      ),
                      SizedBox(height: data.size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.sports_bar,
                                size: data.size.height * 0.03,
                              ),
                              Text(
                                '1 km',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: data.size.height * 0.02),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: data.size.width * 0.1,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.lock_clock,
                                size: data.size.height * 0.03,
                              ),
                              Text(
                                '20 min',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: data.size.height * 0.02),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: data.size.height * 0.025),
                      RankingListTitle(),
                      RankingList(),
                      SizedBox(height: data.size.height * 0.05),
                      RoundedButtonWidget(
                        buttonColor: Theme.of(context).primaryColor,
                        textColor: Theme.of(context).hintColor,
                        buttonText: ('End'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (context) => Challenges()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RankingListTitle extends StatelessWidget {
  const RankingListTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Ranking top three',
            style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Theme.of(context).hintColor,
                  fontSize: data.height * 0.03,
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
                    fontSize: data.height * 0.03,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
