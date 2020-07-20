import 'package:flutter/material.dart';
import 'package:wetrac/theme.dart';

class NoDataFoundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/emptyImage.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                'No Data Found',
                style: AppTheme.headline,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              // Text(
              //   'subTitle',
              //   style: AppTheme.subtitle,
              //   overflow: TextOverflow.clip,
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),
          Expanded(
            flex: 2,
            child: Container(),
          )
        ],
      ),
    );
  }
}
