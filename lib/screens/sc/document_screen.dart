import 'package:flutter/material.dart';

import 'package:wetrac/constants/route_paths.dart' as routes;

import 'package:wetrac/theme.dart';

class DocumentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Document Notifications'),
      ),
      backgroundColor: AppTheme.background,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FittedBox(
                child: Text(
                  'Document notifications received from',
                  style: AppTheme.subtitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
