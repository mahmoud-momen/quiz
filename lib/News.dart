import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PageSwipe.dart';
import 'Vitals.dart';
import 'category.dart';

class News extends StatefulWidget {
  static const String routeName = 'news';


  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  int selectedTabIndex = 0;
  final List<String> tabs = ["Discover", "News", "Most Viewed", "Saved"];
  void onTabSelected(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        children: [
          Center(
            child: Column(
              children: [

                Container(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/logo2.png')
                ),


                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Icon(Icons.search_sharp, color: Color(0xff667085),),

                      Text(
                        "Articles, Video, Audio and More,...",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff667085),
                        ),
                      ),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffD0D5DD)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,

                ),

              ],
            ),
          ),

          SizedBox(height: 15,),

          CustomTabBar(
            tabs: tabs,
            selectedTabIndex: selectedTabIndex,
            onTabSelected: onTabSelected,
          ),

          SizedBox(height: 0,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(

              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hot Topics', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Spacer(),
                Text('See all', style: TextStyle(color: Color(0xff5925DC)),),
                Icon(Icons.arrow_forward_ios_sharp, color: Color(0xff5925DC),size: 15,)
              ],
            ),
          ),


          Vitals(),

          Padding(
            padding: const EdgeInsets.all(40),
            child: Container(

              alignment: Alignment.centerLeft,

                child: Text('Get Tips', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),)
            ),
          ),
          Image.asset('assets/images/doc.png'),

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(

              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Cycle Phases and Period', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Spacer(),
                Text('See all', style: TextStyle(color: Color(0xff5925DC)),),
                Icon(Icons.arrow_forward_ios_sharp, color: Color(0xff5925DC),size: 15,)
              ],
            ),
          ),

        ]
      ),
    );
  }


}