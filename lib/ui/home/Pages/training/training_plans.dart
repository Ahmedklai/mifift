import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mifift/ui/home/Pages/challengs/ranking_page.dart';
import 'package:mifift/widgets/challenge_carousel.dart';
import 'package:mifift/widgets/normal_challenge.dart';
import 'package:mifift/widgets/ranking_list.dart';
import 'package:mifift/widgets/training_carousel.dart';

class TrainingPlans extends StatefulWidget {
  @override
  _TrainingPlansState createState() => _TrainingPlansState();
}

class _TrainingPlansState extends State<TrainingPlans> {
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
                'Training Plans',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
            ),
            SizedBox(height: data.size.height * 0.02),
            TrainingCarousel(),
            SizedBox(height: data.size.height * 0.07),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Text(
                'General',
                style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
            ),
            SizedBox(height: data.size.height * 0.02),
            TrainingCarousel(),
            SizedBox(height: data.size.height * 0.07),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Text(
                'Armed Forces',
                style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
            ),
            SizedBox(height: data.size.height * 0.02),
            TrainingCarousel(),
            SizedBox(height: data.size.height * 0.035),
            TrainingCarousel(),
            SizedBox(height: data.size.height * 0.035),
            TrainingCarousel(),
            SizedBox(height: data.size.height * 0.035),
          ],
        ),
      ),
    );
  }
}
