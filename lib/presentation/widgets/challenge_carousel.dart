import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mifift/core/models/challenge_modal.dart';

import 'normal_challenge.dart';

class ChallengeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: data.height / data.width,
        height: data.height * 0.3,
        viewportFraction: 0.9,
        enableInfiniteScroll: false,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Normalchallenge(
                    challengeData: ChallengeData(
                  'lib/assets/run.png',
                  'Challenge Name',
                  'run',
                  500,
                  20,
                  "Challenge Type Lorem ipsum dolor sit amet, conseteturLorem ipsum dolor sit amet, conseteturLorem ipsum dolor sit amet, conseteturLorem ipsum dolor sit amet, conseteturLorem ipsum dolor sit amet, consetetur",
                  50,
                  false,
                  true,
                )));
          },
        );
      }).toList(),
    );
  }
}
