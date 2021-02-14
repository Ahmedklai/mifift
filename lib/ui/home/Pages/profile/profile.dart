import 'package:flutter/material.dart';
import 'package:mifift/ui/home/Pages/profile/legal.dart';
import 'package:mifift/ui/home/Pages/profile/notification_privacy.dart';
import 'package:mifift/ui/home/Pages/profile/settings.dart';
import 'package:mifift/ui/home/home.dart';

class Profile extends StatelessWidget {
  final String _fullName = "Nick Frost";
  final String _status = "@jhonweek";
  final String _followers = "173Km";
  final String _posts = "4";
  final String _scores = "4";

  Widget _buildProfileImage(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: data.height * 0.25,
        height: data.height * 0.25,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/run.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            data.width * 0.3,
          ),
        ),
      ),
    );
  }

  Widget _buildFullName(BuildContext context) {
    TextStyle _nameTextStyle =
        Theme.of(context).textTheme.headline2.copyWith(color: Colors.white);

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(_status, style: Theme.of(context).textTheme.headline3),
    );
  }

  Widget _buildStatItem(String label, String count, BuildContext context) {
    TextStyle _statLabelTextStyle = Theme.of(context).textTheme.bodyText2;
    TextStyle _statCountTextStyle =
        Theme.of(context).textTheme.headline2.copyWith(color: Colors.white);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer(BuildContext context) {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Total", _followers, context),
          _buildStatItem("Completed", _posts, context),
          _buildStatItem("Open", _scores, context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenSize.height * 0.5,
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        title: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildProfileImage(context),
              _buildFullName(context),
              _buildStatus(context),
              _buildStatContainer(context),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            child: ListTile(
                leading: Text('Settings'), trailing: Icon(Icons.navigate_next)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (context) => Settings()),
              );
            },
          ),
          InkWell(
            child: ListTile(
                leading: Text('Notifications and privacy'),
                trailing: Icon(Icons.navigate_next)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => NotifacationPrivacy()),
              );
            },
          ),
          InkWell(
            child: ListTile(
                leading: Text('Legal'), trailing: Icon(Icons.navigate_next)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (context) => Legal()),
              );
            },
          ),
        ],
      ),
    );
  }
}
