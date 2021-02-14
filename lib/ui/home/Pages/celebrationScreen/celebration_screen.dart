import 'package:flutter/material.dart';
import 'package:mifift/ui/home/Pages/challengs/ranking_page.dart';
import 'package:mifift/widgets/button.dart';
import 'package:mifift/widgets/ranking_list.dart';

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
                            MaterialPageRoute(
                                builder: (context) => RankingPage()),
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
                MaterialPageRoute(builder: (context) => RankingPage()),
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
