import 'package:flutter/material.dart';

import '../../theme.dart';

class DashboardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Dashboard'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              print('refresh');
            },
          )
        ],
      ),
      backgroundColor: AppTheme.background,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.0),
            Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 0.18,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FittedBox(
                child: Text(
                  'Please find your existing requests or create a new request.',
                  style: AppTheme.subtitle,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text('Create Request'),
              onPressed: () {},
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('Submitted Request'),
                    trailing: Container(
                      width: 70,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            child: FittedBox(
                              child: Text('1'),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.chevron_right,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: Text('Received Request'),
                    trailing: Container(
                      width: 70,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green[900],
                            child: FittedBox(
                              child: Text('1'),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.chevron_right,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: Text('Pending Request'),
                    trailing: Container(
                      width: 70,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red,
                            child: FittedBox(
                              child: Text('0'),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.chevron_right,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: Text('Vz Engaged'),
                    trailing: Container(
                      width: 70,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.orange,
                            child: FittedBox(
                              child: Text('1'),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.chevron_right,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
