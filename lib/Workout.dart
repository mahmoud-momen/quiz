import 'package:flutter/material.dart';

class Workout extends StatefulWidget {
  static const String routeName = 'workout';

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  List<String> items = ['All Type', 'Full Body', 'Upper', 'Lower'];
  int selectedItemIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(2),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 40),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 65),
                          child: DefaultTextStyle(
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            child: Text('Hello, Jade'),
                          ),
                        ),
                        SizedBox(height: 5),
                        DefaultTextStyle(
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                          child: Text('Ready to workout?'),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Image.asset('assets/images/bell3x.png'),
                    width: 30,
                    height: 30,
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 350,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffEAECF5),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined, color: Color(0xff717BBC)),
                                  DefaultTextStyle(
                                    style: TextStyle(color: Colors.black),
                                    child: Text('Heart Rate'),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  DefaultTextStyle(
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                                    child: Text('81 '),
                                  ),
                                  DefaultTextStyle(
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black),
                                    child: Text('BPM'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        VerticalDivider(
                          indent: 20,
                          endIndent: 20,
                          color: Colors.grey,
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.format_list_bulleted, color: Color(0xff717BBC)),
                                  DefaultTextStyle(
                                    style: TextStyle(color: Colors.black),
                                    child: Text('Heart Rate'),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  DefaultTextStyle(
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                                    child: Text('32.5'),
                                  ),
                                  DefaultTextStyle(
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black),
                                    child: Text(' %'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        VerticalDivider(
                          indent: 20,
                          endIndent: 20,
                          color: Colors.grey,
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.local_fire_department, color: Color(0xff717BBC)),
                                  DefaultTextStyle(
                                    style: TextStyle(color: Colors.black),
                                    child: Text('Calo'),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  DefaultTextStyle(
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                                    child: Text('1000'),
                                  ),
                                  DefaultTextStyle(
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
                                    child: Text(' Cal'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Text('Workout Programs', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  items.length,
                      (index) {
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedItemIndex = index;
                          });
                        },

                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: selectedItemIndex == index ? Color(0xff363F72) : Colors.grey,
                                width: selectedItemIndex == index ? 2 : 0.5,

                              ),
                            ),
                          ),
                          child: Text(
                            items[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              color: selectedItemIndex == index ?  Color(0xff363F72) : Color(0xff667085),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

             
                
                 Container(
                   width: 320,
                   child: Column(
                    children: [
                      SizedBox(height: 20,),

                    Image.asset('assets/images/pic1.png'),
                    SizedBox(height: 20,),

                    Image.asset('assets/images/pic2.png'),
                      SizedBox(height: 20,),

                      Image.asset('assets/images/pic2.png'),
                ],
                ),
                 ),
              

            ],
          ),
        ),
      ),
    );
  }
}
