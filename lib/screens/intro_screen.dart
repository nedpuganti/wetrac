import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wetrac/constants/route_paths.dart' as routes;
import 'package:wetrac/data/intro_data.dart';
import 'package:wetrac/models/intro_model.dart';
import 'package:wetrac/theme.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var currentPageValue = 0.0;
  int _currentPage = 0;

  final PageController _pageController = PageController(
    initialPage: 0,
    // viewportFraction: 0.8,
  );

  final List<IntroModel> _pages = INTRO_DATA;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page;
      });
    });

    // WidgetsBinding.instance.addPostFrameCallback((_) => _animateSlider());

    // TODO: implement initState
    super.initState();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });

    _goToNextPage();
  }

  void _goToNextPage() {
    _pageController.animateToPage(
      _currentPage,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  // void _animateSlider() {
  //   Timer.periodic(Duration(seconds: 5), (Timer timer) {
  //     if (_currentPage < 2) {
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0;
  //     }

  //     print(_currentPage);
  //     print(currentPageValue);
  //     _goToNextPage();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      backgroundColor: AppTheme.white,
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                controller: _pageController,
                onPageChanged: _onPageChanged,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (ctx, i) => Transform(
                  transform: Matrix4.identity()..rotateX(currentPageValue - i),
                  child: Container(
                    // padding: EdgeInsets.all(15),
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 5.0),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  // constraints: BoxConstraints(
                                  //   maxHeight: 200.0,
                                  // ),
                                  padding: const EdgeInsets.all(10.0),
                                  child: FadeInImage(
                                    placeholder: AssetImage(
                                      'assets/images/placeholder.jpg',
                                    ),
                                    image: AssetImage(
                                      _pages[i].image,
                                    ),
                                    fit: BoxFit.contain,
                                    alignment: Alignment.center,
                                    fadeInDuration: Duration(milliseconds: 200),
                                    fadeInCurve: Curves.easeIn,
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    _pages[i].title,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppTheme.title,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    // vertical: 5.0,
                                    horizontal: 35.0,
                                  ),
                                  child: Text(
                                    _pages[i].description,
                                    textAlign: TextAlign.center,
                                    style: AppTheme.subtitle,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < _pages.length; i++)
                    if (i == _currentPage)
                      _buildSlideDots(context, true, i)
                    else
                      _buildSlideDots(context, false, i)
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 90,
              padding: EdgeInsets.all(20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.5),
                ),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text('Let\'s Go'),
                onPressed: () {
                  return Navigator.of(context).pushReplacementNamed(
                    routes.HomeRoute,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlideDots(BuildContext context, bool isActive, int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Color(0XFFC7C7C7),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
