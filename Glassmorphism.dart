import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
class Des1 extends StatefulWidget {
  const Des1({super.key});

  @override
  State<Des1> createState() => _Des1State();
}

class _Des1State extends State<Des1> {
  Color y1 = Color(0xFFe69d49);
  Color y2 = Color(0xFFe8d19e);
  Color p1 = Color(0xFF8b3ae8);
  Color p2 = Color(0xFFd4beed);

  @override
  Widget build(BuildContext context) {
    var fw = MediaQuery.of(context).size.width;
    var fh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: fw,
            height: fh,
            decoration:BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  p2,
                ],
                  begin: Alignment.bottomLeft,
                end:Alignment.topRight
              )
            ),
          ),
          Container(
            width: fw,
            height: fh,
            decoration:BoxDecoration(
                gradient: RadialGradient(
                    colors: [
                      y1,
                      Color.fromRGBO(255, 255, 255, 0)
                    ],
                    center: Alignment(0.45, -0.22)
                )
          ),
          ),
          Container(
            width: fw,
            height: fh,
            decoration:BoxDecoration(
                gradient: RadialGradient(
                    colors: [
                      p1,
                      Color.fromRGBO(255, 255, 255, 0)
                    ],
                    center: Alignment(1, -0.55)
                )
            ),
          ),
          Container(
            width: fw,
            height: fh,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(0.3)
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                  Container(
                    width: fw,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(),
                        Row(
                          children: [
                            FittedBox(
                          fit: BoxFit.scaleDown, // This helps in shrinking the ClipRRect to the size of the Image
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'lib/assets/1.jpg',
                              width: 62,
                              height: 62,
                            ),
                          ),
                        ),
                            SizedBox(width: 15,),
                            Container(
                            height: 49,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Hello, Joeseph',style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text('Pro account',style: TextStyle(color: Colors.black45,fontSize: 16),)
                              ],
                            ),
                          )
                          ]),
                        SizedBox(width: 40,),
                        Row(children: [
                          Image(image: AssetImage('lib/assets/search.png'),width: 32,),
                          SizedBox(width: 20,),
                          Image(image: AssetImage('lib/assets/alarm.png'),width: 28,),
                        ],),
                        SizedBox(),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: fw,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(textAlign: TextAlign.left,
                              'You have',
                            style: TextStyle(color: Colors.black45,fontSize: 31),
                          ),
                          Text('4 great job\nsuggestions',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 31),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 13,),
                  Container(
                    width: fw,
                    height: 240,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 15,),
                          Container(
                            width: 240,
                            height: 240,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 105,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.purple.shade200.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(25),
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                          width: 2,
                                        ),
                                      ),
                                      child: Center(child: Text('Full time',style: TextStyle(color: Colors.purple.withOpacity(0.8),fontWeight: FontWeight.bold),),),
                                    ),
                                    Container(
                                      width: 105,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade200.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(25),
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                          width: 2,
                                        ),
                                      ),
                                      child: Center(child: Text('Beginner',style: TextStyle(color: Colors.blue.withOpacity(0.8),fontWeight: FontWeight.bold),),),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(14,40,0,0),
                                  child: Text('Design Graphic needed !',style: TextStyle(fontSize: 26,color: Colors.black87,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_sharp,color: Colors.black54,size: 22,),
                                      Text('Tehran',style: TextStyle(color: Colors.black87,fontSize: 20),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [BoxShadow(
                                blurRadius: 12,
                                color: Colors.black54.withOpacity(0.02),
                              )],
                              border: GradientBoxBorder(
                                gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                width: 2,
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 240,
                            height: 240,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 105,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        boxShadow: [BoxShadow(
                                          blurRadius: 12,
                                          color: Colors.black54.withOpacity(0.02),
                                        )],
                                        color: Colors.purple.shade200.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(25),
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                          width: 2,
                                        ),
                                      ),
                                      child: Center(child: Text('Part time',style: TextStyle(color: Colors.purple.withOpacity(0.8),fontWeight: FontWeight.bold),),),
                                    ),
                                    Container(
                                      width: 105,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.orange.shade200.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(25),
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                          width: 2,
                                        ),
                                      ),
                                      child: Center(child: Text('Professinal',style: TextStyle(color: Colors.orange.withOpacity(0.8),fontWeight: FontWeight.bold),),),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(14,40,0,0),
                                  child: Text('UI UX Designer needed !',style: TextStyle(fontSize: 26,color: Colors.black87,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_sharp,color: Colors.black54,size: 22,),
                                      Text('Yazd',style: TextStyle(color: Colors.black87,fontSize: 20),)
                                    ],
                                  ),
                                )
                              ],
                            ),

                            decoration: BoxDecoration(
                                color: Colors.grey.shade200.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(14),
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                  width: 2,
                                ),
                            ),
                          ),
                          SizedBox(width: 15,),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('New job update',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 23)),
                        Text('See All',style: TextStyle(color: Colors.purple.withOpacity(0.7),fontWeight: FontWeight.bold,fontSize: 19)),
                      ],
                    ),
                  ),
                  Container(
                    width: fw/1.15,
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(),
                            Row(
                                children: [
                                  FittedBox(
                                    fit: BoxFit.scaleDown, // This helps in shrinking the ClipRRect to the size of the Image
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        'lib/assets/22.png',
                                        width: 62,
                                        height: 62,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    height: 60,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('UI UX Designer',style: TextStyle(color: Colors.black87,fontSize: 23,fontWeight: FontWeight.bold),),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_sharp,color: Colors.black54,size: 17,),
                                            Text('Tehran',style: TextStyle(color: Colors.black87,fontSize: 15),)
                                          ],
                                        ),                                      ],
                                    ),
                                  )
                                ]),
                            SizedBox(width: 20,),
                            Text('1 day ago',style: TextStyle(color: Colors.black45,fontSize: 17),),
                            SizedBox(width: 10,),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,30,0,0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 105,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.purple.shade200.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(25),
                                      border: GradientBoxBorder(
                                        gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(child: Text('Part time',style: TextStyle(color: Colors.purple.withOpacity(0.8),fontWeight: FontWeight.bold),),),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    width: 105,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.orange.shade200.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(25),
                                      border: GradientBoxBorder(
                                        gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(child: Text('Professinal',style: TextStyle(color: Colors.orange.withOpacity(0.8),fontWeight: FontWeight.bold),),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Container(
                                  width: 38,
                                  height: 38,
                                  child:Center(
                                    child: Image(image: AssetImage('lib/assets/fa.png'),width: 25,),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black87
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [BoxShadow(
                        blurRadius: 12,
                        color: Colors.black54.withOpacity(0.02),
                      )],
                      border: GradientBoxBorder(
                        gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                        width: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: fw/1.15,
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(),
                            Row(
                                children: [
                                  FittedBox(
                                    fit: BoxFit.scaleDown, // This helps in shrinking the ClipRRect to the size of the Image
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        'lib/assets/33.png',
                                        width: 62,
                                        height: 62,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    height: 60,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Front-end',style: TextStyle(color: Colors.black87,fontSize: 23,fontWeight: FontWeight.bold),),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_sharp,color: Colors.black54,size: 17,),
                                            Text('Isfahan',style: TextStyle(color: Colors.black87,fontSize: 15),)
                                          ],
                                        ),                                      ],
                                    ),
                                  )
                                ]),
                            SizedBox(width: 20,),
                            Text('2 weeks ago',style: TextStyle(color: Colors.black45,fontSize: 17),),
                            SizedBox(width: 10,),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,30,0,0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 105,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.purple.shade200.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(25),
                                      border: GradientBoxBorder(
                                        gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(child: Text('Part time',style: TextStyle(color: Colors.purple.withOpacity(0.8),fontWeight: FontWeight.bold),),),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    width: 105,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.orange.shade200.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(25),
                                      border: GradientBoxBorder(
                                        gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(child: Text('Professinal',style: TextStyle(color: Colors.orange.withOpacity(0.8),fontWeight: FontWeight.bold),),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Container(
                                  width: 38,
                                  height: 38,
                                  child:Center(
                                    child: Image(image: AssetImage('lib/assets/fa.png'),width: 27),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.black87
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [BoxShadow(
                        blurRadius: 12,
                        color: Colors.black54.withOpacity(0.02),
                      )],
                      border: GradientBoxBorder(
                        gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade200.withOpacity(0.6)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                        width: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),


                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
