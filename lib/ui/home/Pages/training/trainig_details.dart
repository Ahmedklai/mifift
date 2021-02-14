import 'package:flutter/material.dart';
import 'package:mifift/data/training_modal.dart';
import 'package:mifift/ui/home/Pages/training/trainig_plan.dart';
import 'package:mifift/ui/register/register3.dart';
import 'package:mifift/widgets/button.dart';

import '../activeScreen/active_screen.dart';

class TrainingDetails extends StatefulWidget {
  final TrainingData trainingData;

  const TrainingDetails({Key key, this.trainingData}) : super(key: key);

  @override
  _TrainingDetailsState createState() => _TrainingDetailsState();
}

class _TrainingDetailsState extends State<TrainingDetails> {
  @override
  Widget build(BuildContext context) {
    Widget getIcon(String status) {
      switch (status) {
        case 'Buy':
          return IconButton(
            icon: Icon(
              Icons.download_outlined,
              color: Colors.white30,
            ),
            onPressed: () {
              setState(() {
                status = 'Download';
              });
            },
          );
          break;
        case 'Download':
          return IconButton(
            icon: Icon(
              Icons.download_outlined,
            ),
            onPressed: () {
              setState(() {
                status = 'Open';
                print(status);
              });
            },
          );
          break;
        case 'Open':
          return IconButton(
            icon: Icon(
              Icons.g_translate_rounded,
              color: Colors.white30,
            ),
            onPressed: () {
              setState(() {
                status = 'Buy';
              });
            },
          );
          break;
      }
      return Icon(Icons.download_outlined);
    }

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
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage('lib/assets/runing.png'),
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
                  'widget.trainingData.type',
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: data.size.height * 0.025),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.trainingData.title,
                      style: Theme.of(context).textTheme.headline2.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: data.size.height * 0.035),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [],
                ),
                Text(
                  'Decreption',
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: data.size.height * 0.025),
                ),
                Text(
                  widget.trainingData.description,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.grey, fontSize: data.size.height * 0.02),
                ),
                RoundedButtonWidget(
                  disabled: true,
                  buttonColor: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).hintColor,
                  buttonText: ('Start'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrainingPlan()));
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
