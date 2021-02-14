import 'package:flutter/material.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';

class NotifacationPrivacy extends StatefulWidget {
  @override
  _NotifacationPrivacyState createState() => _NotifacationPrivacyState();
}

class _NotifacationPrivacyState extends State<NotifacationPrivacy> {
  @override
  Widget build(BuildContext context) {
    bool _value = true;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text('Notifaction and Privacy'),
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Notifaction',
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  .copyWith(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Text(
              'Email Notification',
              style: Theme.of(context).textTheme.headline2.copyWith(
                    color: Colors.white,
                  ),
            ),
            trailing: Switch.adaptive(
              value: _value,
              onChanged: (newValue) => setState(() => _value = newValue),
            ),
          ),
          Divider(
            thickness: 0.2,
            height: 0.2,
            color: Theme.of(context).hintColor,
          ),
          ListTile(
            leading: Text('App Notifications'),
            trailing: Switch.adaptive(
              value: _value,
              onChanged: (newValue) => setState(() => _value = newValue),
            ),
          ),
          Divider(
            thickness: 0.2,
            height: 0.2,
            color: Theme.of(context).hintColor,
          ),
          ListTile(
            leading: Text('Location'),
            trailing: Switch.adaptive(
              value: _value,
              onChanged: (newValue) => setState(() => _value = newValue),
            ),
          ),
          Divider(
            thickness: 0.2,
            height: 0.2,
            color: Theme.of(context).hintColor,
          ),
          ListTile(
            leading: Text('Contact'),
            trailing: Switch.adaptive(
              value: _value,
              onChanged: (newValue) => setState(() => _value = newValue),
            ),
          ),
          Divider(
            thickness: 0.2,
            height: 0.2,
            color: Theme.of(context).hintColor,
          ),
          InkWell(
              onTap: () => showConfirmationDialog(
                  context: context,
                  title: 'delete account',
                  message:
                      'Befor closing your account please put your password to confirm your account deletion '),
              child: Text('delete account'))
        ],
      ),
    );
  }
}
