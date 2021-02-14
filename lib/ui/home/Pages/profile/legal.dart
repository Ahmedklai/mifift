import 'package:flutter/material.dart';

class Legal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0,
        title: Text('Legal'),
      ),
      body: Column(
        children: [
          InkWell(
            child: ListTile(
                leading: Text('Terme of use'),
                trailing: Icon(Icons.navigate_next)),
            onTap: () {},
          ),
          InkWell(
            child: ListTile(
                leading: Text('Privacy'), trailing: Icon(Icons.navigate_next)),
            onTap: () {},
          ),
          InkWell(
            child: ListTile(
                leading: Text('Imprint'), trailing: Icon(Icons.navigate_next)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
