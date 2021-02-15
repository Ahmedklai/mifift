import 'package:flutter/material.dart';
import 'package:mifift/data/models/training_modal.dart';
import 'package:mifift/presentation/screens/home/Pages/training/trainig_details.dart';

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
          MaterialPageRoute<void>(
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
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(trainingData.picture))),
        ),
        Positioned(
            top: data.height * 0.2,
            left: 15,
            child: Text(
              trainingData.title,
              style: Theme.of(context).textTheme.headline2.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
            )),
        Positioned(
            top: data.height * 0.24,
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
