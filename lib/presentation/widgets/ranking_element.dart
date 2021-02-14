import 'package:flutter/material.dart';

class RankingElement extends StatelessWidget {
  final String img;
  final int rank;
  final String name;
  final String timing;

  const RankingElement({Key key, this.img, this.rank, this.name, this.timing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(rank.toString()),
            CircleAvatar(backgroundImage: AssetImage(img)),
            Text(name),
          ],
        ),
        trailing: Text(timing),
      ),
    );
  }
}
