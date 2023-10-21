import 'package:flutter/material.dart';

class Vitals extends StatefulWidget {
  @override
  _PageViewWithIndicatorState createState() => _PageViewWithIndicatorState();
}

class _PageViewWithIndicatorState extends State<Vitals> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  List<String> _imagePaths = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img1.png',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(

        width: 350,
        height: 180,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),

        ),

        child: Column(
          children: <Widget>[
            Container(
              width: 10,
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: _imagePaths
                    .map((imagePath) => Image.asset(imagePath, fit: BoxFit.fill,filterQuality: FilterQuality.high,))
                    .toList(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
