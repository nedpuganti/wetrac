import 'package:flutter/material.dart';

import '../../theme.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      backgroundColor: AppTheme.background,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    ListTile(
                      title: Text('My Profile'),
                      trailing: Icon(
                        Icons.chevron_right,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      title: Text('Reset Password'),
                      trailing: Icon(
                        Icons.chevron_right,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      title: Text('About'),
                      trailing: Icon(
                        Icons.chevron_right,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Other Settings',
                        style: AppTheme.title,
                      ),
                    ),
                    ListTile(
                      title: Text('Set Auto Logout Time'),
                      trailing: Text(
                        '10 mins',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text('Sign Out'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Text(
                'For Support please contact support team',
                style: AppTheme.subtitle,
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
