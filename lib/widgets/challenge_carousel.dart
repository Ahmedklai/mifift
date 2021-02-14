import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mifift/data/challenge_modal.dart';

import 'normal_challenge.dart';

class ChallengeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return SizedBox(
      height: data.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        
        itemCount: 6,
        itemBuilder: (context, i) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                decoration: BoxDecoration(),
                child: Normalchallenge(
                    challengeData: ChallengeData(
                        'lib/assets/run.jpeg',
                        'Challenge Name',
                        'Running',
                        15,
                        15,
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd",
                        15,
                        true,
                        false)),
              ));
        },
      ),
    );
  }
}
