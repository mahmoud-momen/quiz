import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> tabs;
  final int selectedTabIndex;
  final ValueChanged<int> onTabSelected;

  CustomTabBar({
    required this.tabs,
    required this.selectedTabIndex,
    required this.onTabSelected,
  });

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),


      ),
      child: Row(
        children: List.generate(
          widget.tabs.length,
              (index) {
            return GestureDetector(
              onTap: () {
                widget.onTabSelected(index);
              },
              child: Container(
                decoration: BoxDecoration(

                  border: Border.all(color: index == widget.selectedTabIndex ?

                      Color(0xff6941C6)
                      : Color(0xff667085)
                  ),
                  borderRadius: BorderRadius.circular(30.0), // Circular borders
                  color: index == widget.selectedTabIndex
                      ? Color(0xffD6BBFB) // Selected button color
                      : Colors.transparent, // Unselected button color
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                margin: EdgeInsets.all(8.0),
                child: Text(
                  widget.tabs[index],
                  style: TextStyle(
                    color: index == widget.selectedTabIndex ?
                      Color(0xff6941C6)
                    : Color(0xff667085)
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}