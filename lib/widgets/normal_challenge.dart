import 'package:flutter/material.dart';
import 'package:mifift/ui/home/Pages/challengs/challenge_details.dart';
import 'package:mifift/data/challenge_modal.dart';

class Normalchallenge extends StatelessWidget {
  final ChallengeData challengeData;

  const Normalchallenge({Key key, this.challengeData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ChallengeDetails(
                    challengeData: challengeData,
                  )),
        );
      },
      child: Stack(children: <Widget>[
        Container(
          height: data.height * 0.350,
          width: data.width * 0.9,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  25,
                ),
              ),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(challengeData.picture))),
        ),
        Positioned(
            top: data.height * 0.2,
            left: 15,
            child: Text(
              challengeData.title,
              style: Theme.of(context).textTheme.headline2.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
            )),
        Positioned(
            top: data.height * 0.24,
            left: 15,
            child: Text(
              challengeData.category,
              style: Theme.of(context).textTheme.headline3.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
            )),
        challengeData.highlited
            ? Positioned(
                top: data.height * 0.25,
                left: data.width * 0.5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'highlited Challenge',
                      style: Theme.of(context).textTheme.headline3.copyWith(
                            color: Theme.of(context).hintColor,
                          ),
                    ),
                  ),
                ))
            : Container(),
      ]),
    );
  }
}
