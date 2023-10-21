import 'package:flutter/material.dart';
import 'package:task/Page_Indicator.dart';
import 'package:task/Vitals.dart';

import 'News.dart';
import 'Workout.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(

        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        child: Image.asset('assets/images/logo3x.png'),
                        width: 120,
                      ),
                      Container(
                        child: Image.asset('assets/images/bell3x.png'),
                        width: 25,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          DefaultTextStyle(
                            style: TextStyle(
                                color: Color(0xff371B34),
                                fontSize: 20,
                                fontFamily: 'Milonga',
                                fontWeight: FontWeight.w300),
                            child: Text(
                              'Hello,',
                            ),
                          ),
                          DefaultTextStyle(
                            style: TextStyle(
                                color: Color(0xff371B34),
                                fontSize: 20,
                                fontFamily: 'Milonga',
                                fontWeight: FontWeight.bold),
                            child: Text(
                              ' Sara Rose',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.all(25),
                        child: DefaultTextStyle(
                          style:  TextStyle(
                              color: Color(0xff371B34),
                              fontSize: 20,
                              fontFamily: 'Milonga',
                              fontWeight: FontWeight.w300),
                          child: Text(
                            'How are you feeling today ?',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Column(
                        children: [
                          Container(child: Image.asset('assets/images/love3x.png')
                          ,width: 70,),
                          DefaultTextStyle(style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                          child: Text('Love')),
                        ],
                          ),
                      Column(
                        children: [
                          Container(child: Image.asset('assets/images/cool3x.png'),
                          width: 70,),
                          DefaultTextStyle(style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                              child: Text('Cool')),
                        ],
                      ),
                      Column(
                        children: [
                          Container(child: Image.asset('assets/images/happy3x.png')
                            ,width: 70,),
                          DefaultTextStyle(style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                              child: Text('Happy')),
                        ],
                      ),
                      Column(
                        children: [
                          Container(child: Image.asset('assets/images/sad3x.png')
                            ,width: 70,),
                          DefaultTextStyle(style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                              child: Text('Sad')),
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(45),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          DefaultTextStyle(
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            child: Text(
                              'Features',
                            ),
                          ),

                          Spacer(),
                          DefaultTextStyle(
                            style: TextStyle(
                                color: Color(0xff027849),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            child: Text(
                              'See More',
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_sharp,color: Color(0xff027849),)

                        ],
                      ),
                      PageSwipe(),
                    ],
                  ),
                ),



                Container(


                  margin: EdgeInsets.only(left: 20,right: 20, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(

                            child: DefaultTextStyle(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              child: Text(
                                'Features',
                              ),
                            ),
                          ),

                          Spacer(),
                          Container(


                            child: const DefaultTextStyle(
                              style: TextStyle(
                                  color: Color(0xff027849),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              child: Text(
                                'See More',
                              ),
                            ),
                          ),
                          Container(

                              child: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xff027849),))

                        ],
                      ),


              SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 25),
                            child: Image.asset('assets/images/relax.png'),width: 170, height: 70,),
                          Container(child: Image.asset('assets/images/med.png'),width: 170, height: 70,),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 25),
                            child: Image.asset('assets/images/breath.png'),width: 170, height: 70,),
                          Container(child: Image.asset('assets/images/yoga.png'),width: 170, height: 70,),

                        ],
                      ),
                    ],
                  ),
                ),



              ],
            ),
          ),
        ),


      ),
    );

  }

}
