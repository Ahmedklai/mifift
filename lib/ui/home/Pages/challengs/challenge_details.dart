import 'package:flutter/material.dart';
import 'package:mifift/core/models/challenge_modal.dart';

import 'package:mifift/ui/register/register3.dart';
import 'package:mifift/widgets/button.dart';

import '../activeScreen/active_screen.dart';

class ChallengeDetails extends StatelessWidget {
  final ChallengeData challengeData;

  const ChallengeDetails({Key key, this.challengeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            width: data.size.height * 1,
            height: data.size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/run.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: data.size.height * 0.55,
        color: Colors.transparent,
        width: double.infinity,
        child: new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  challengeData.category,
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: data.size.height * 0.025),
                ),
                Text(
                  challengeData.title,
                  style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: data.size.height * 0.035),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.sports_bar,
                          size: data.size.height * 0.03,
                        ),
                        Text(
                          challengeData.distance.toString(),
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
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
                          challengeData.time.toString(),
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Theme.of(context).hintColor,
                              fontSize: data.size.height * 0.02),
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'Decreption',
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: data.size.height * 0.025),
                ),
                Text(
                  challengeData.description,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.grey, fontSize: data.size.height * 0.02),
                ),
                RoundedButtonWidget(
                  buttonColor: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).hintColor,
                  buttonText: ('Start'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => ActiveScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
