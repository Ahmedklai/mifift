import 'package:flutter/material.dart';

class TrainingPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).accentColor),
        title: Text(
          'training plan name',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).hintColor,
      ),
      backgroundColor: Theme.of(context).hintColor,
    );
  }
}
