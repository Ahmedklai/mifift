import 'package:flutter/material.dart';
import 'package:mifift/data/training_modal.dart';
import 'package:mifift/ui/home/Pages/challengs/challenge_details.dart';
import 'package:mifift/ui/home/Pages/training/trainig_details.dart';

class Normaltraining extends StatelessWidget {
  final TrainingData trainingData;

  const Normaltraining({Key key, this.trainingData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TrainingDetails(
                    trainingData: trainingData,
                  )),
        );
      },
      child: Stack(children: <Widget>[
        Container(
          height: data.height * 0.3,
          width: data.width,
          decoration: BoxDecoration(
              borderRadius: new BorderRadius.all(
                Radius.circular(
                  data.width * 0.1,
                ),
              ),
              image: DecorationImage(image: AssetImage(trainingData.picture))),
        ),
        Positioned(
            top: 130,
            left: 15,
            child: Text(
              trainingData.title,
              style: Theme.of(context).textTheme.headline2.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
            )),
        Positioned(
            top: 160,
            left: 15,
            child: Text(
              'trainingData.type',
              style: Theme.of(context).textTheme.headline3.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
            )),
      ]),
    );
  }
}
