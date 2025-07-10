import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
class Des2 extends StatefulWidget {
  const Des2({super.key});

  @override
  State<Des2> createState() => _Des2State();
}

class _Des2State extends State<Des2> {
  Color bg = Color(0xFFFFF2F1);
  Color light_pink = Color(0xFFFCEBEC);
  Color dark_pink = Color(0xFFE57C74);
  Color text_color = Color(0xFF914F4D);
  @override
  Widget build(BuildContext context) {
    var fw = MediaQuery.of(context).size.width;
    var fh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:  bg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: fw,
            height: fh*0.88,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 34,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30,0,30,0),
                  child: Container(
                    width: fw,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 59,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Welcome back,',style: TextStyle(color: text_color.withOpacity(0.85),fontSize: 19)),
                              Text('Joseph',style: TextStyle(color: text_color.withOpacity(0.95),fontSize: 21,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [light_pink,bg]),
                              boxShadow: [
                                BoxShadow(
                                    color: text_color,
                                    blurRadius: 8,
                                    offset: Offset(1, 1)
                                ),
                                BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 10,
                                    spreadRadius: 3,
                                    offset: Offset(-5, -5)
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'lib/assets/1.jpg',
                                width: 48,
                                height: 48,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Main balance',style: TextStyle(color: Color(0xFFD3A09F) ,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(height: 10,),
                Text(
                  "\$120.56",
                  style: TextStyle(
                      color: text_color,
                      fontSize: 63,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 12,
                          color: text_color.withOpacity(0.85),
                      ),
                        Shadow(
                          offset: Offset(-3, -3),
                          blurRadius: 5,
                          color: Colors.white,
                        ),
                    ])
                ),
                SizedBox(height: 20,),
                Container(
                  width: fw*0.96,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height:51,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('TOP UP',style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold,fontSize: 18),),
                                    Text('20% OFF',style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 15)),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:20),
                              child: SizedBox(
                                height: 58,
                                width: 58,
                                child: InnerShadow(
                                  shadows: [
                                    Shadow(
                                        color: dark_pink.withOpacity(0.4),
                                        blurRadius: 9,
                                        offset: const Offset(6, 8)),
                                    Shadow(
                                        color: Colors.white.withOpacity(0.8),
                                        blurRadius: 9,
                                        offset: const Offset(-8, -8)),
                                  ],
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: light_pink,
                                    ),
                                    child: Icon(Icons.arrow_upward,color: dark_pink,size: 37,shadows: [BoxShadow(color: dark_pink,blurRadius: 5,offset: Offset(1, 1))],),
                                  ),
                                ),
                              ),

                            ),

                          ],
                        ),
                        width:184,
                        height: 95,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xFFF9BDB9),
                            dark_pink
                          ]),
                          boxShadow: [
                            BoxShadow(
                              color: dark_pink.withOpacity(0.95),
                              offset: Offset(2, 2),
                              blurRadius: 13,
                            ),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-4, -4),
                                blurRadius: 10
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height:51,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('PACKAGE',style: TextStyle(color: text_color.withOpacity(0.9),fontWeight: FontWeight.bold,fontSize: 18),),
                                    Text('+2 NEW',style: TextStyle(color: text_color.withOpacity(0.9),fontSize: 15)),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:20),
                              child: SizedBox(
                                height: 58,
                                width: 58,
                                child: InnerShadow(
                                  shadows: [
                                    Shadow(
                                        color: dark_pink.withOpacity(0.25),
                                        blurRadius: 9,
                                        offset: const Offset(6, 8)),
                                    Shadow(
                                        color: Colors.white.withOpacity(0.8),
                                        blurRadius: 9,
                                        offset: const Offset(-8, -8)),
                                  ],
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: light_pink,
                                    ),
                                    child: Icon(Icons.backpack,color: dark_pink,size: 37,shadows: [BoxShadow(color: dark_pink,blurRadius: 5,offset: Offset(1, 1))],),
                                  ),
                                ),
                              ),

                            ),

                          ],
                        ),
                        width:184,
                        height: 95,
                        decoration: BoxDecoration(
                            color: light_pink,
                            boxShadow: [
                              BoxShadow(
                                  color: text_color,
                                  blurRadius: 8,
                                  offset: Offset(1, 1)
                              ),
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  offset: Offset(-5, -5)
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    width: fw,
                      alignment: Alignment.centerLeft,
                      child: Text('SIM card managers',
                        style: TextStyle(
                          color: text_color,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2, 2),
                              blurRadius: 12,
                              color: text_color.withOpacity(0.6),
                            ),
                            Shadow(
                              offset: Offset(-3, -3),
                              blurRadius: 5,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ]
                        ),)
                  ),
                ),
                Container(
                  width: fw*0.8,
                  height: 132,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        light_pink,
                        bg
                      ],begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: text_color,
                            blurRadius: 8,
                            offset: Offset(1, 1)
                        ),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(-5, -5)
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,32,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 115,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('SIM 1 - Verizon',style: TextStyle(
                                  color: text_color,
                                  fontSize: 19,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2, 2),
                                      blurRadius: 12,
                                      color: text_color.withOpacity(0.4),
                                    ),
                                    Shadow(
                                      offset: Offset(-3, -3),
                                      blurRadius: 5,
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ]
                              )
                              ),
                              Text('5G/4G',style: TextStyle(
                                  color: dark_pink,
                                  fontSize: 14,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2, 2),
                                      blurRadius: 12,
                                      color: dark_pink.withOpacity(0.4),
                                    ),
                                    Shadow(
                                      offset: Offset(-3, -3),
                                      blurRadius: 5,
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ]
                              )
                              ),
                              SizedBox(height: 10,),
                              Text('7.59/10Gb',style: TextStyle(
                                  color: text_color,
                                  fontSize: 23,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2, 2),
                                      blurRadius: 12,
                                      color: text_color.withOpacity(0.4),
                                    ),
                                    Shadow(
                                      offset: Offset(-3, -3),
                                      blurRadius: 5,
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ]
                              )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 100,
                          child:Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              SizedBox(
                                height: 110,
                                width: 24,
                                child: InnerShadow(
                                  shadows: [
                                    Shadow(
                                        color: dark_pink.withOpacity(0.25),
                                        blurRadius: 9,
                                        offset: const Offset(6, 8)),
                                    Shadow(
                                        color: Colors.white.withOpacity(0.8),
                                        blurRadius: 9,
                                        offset: const Offset(-8, -8)),
                                  ],
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: light_pink,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 70,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xFFF9BDB9),
                                      dark_pink
                                    ],begin: Alignment.topLeft,
                                      end: Alignment.bottomRight
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: dark_pink.withOpacity(0.95),
                                        offset: Offset(2, 2),
                                        blurRadius: 13,
                                      ),
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4, -4),
                                          blurRadius: 10
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(20)
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ),
                SizedBox(height: 23,),
                Container(
                    width: fw*0.8,
                    height: 132,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          light_pink,
                          bg
                        ],begin: Alignment.topLeft,
                            end: Alignment.bottomRight
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: text_color,
                              blurRadius: 8,
                              offset: Offset(1, 1)
                          ),
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 10,
                              spreadRadius: 3,
                              offset: Offset(-5, -5)
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,32,0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 115,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('SIM 2 - Hamrah Aval',style: TextStyle(
                                    color: text_color,
                                    fontSize: 19,
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 12,
                                        color: text_color.withOpacity(0.4),
                                      ),
                                      Shadow(
                                        offset: Offset(-3, -3),
                                        blurRadius: 5,
                                        color: Colors.white.withOpacity(0.4),
                                      ),
                                    ]
                                )
                                ),
                                Text('5G/4G',style: TextStyle(
                                    color: dark_pink,
                                    fontSize: 14,
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 12,
                                        color: dark_pink.withOpacity(0.4),
                                      ),
                                      Shadow(
                                        offset: Offset(-3, -3),
                                        blurRadius: 5,
                                        color: Colors.white.withOpacity(0.4),
                                      ),
                                    ]
                                )
                                ),
                                SizedBox(height: 10,),
                                Text('0.60/3Gb',style: TextStyle(
                                    color: text_color,
                                    fontSize: 23,
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 12,
                                        color: text_color.withOpacity(0.4),
                                      ),
                                      Shadow(
                                        offset: Offset(-3, -3),
                                        blurRadius: 5,
                                        color: Colors.white.withOpacity(0.4),
                                      ),
                                    ]
                                )
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 100,
                            child:Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                SizedBox(
                                  height: 110,
                                  width: 24,
                                  child: InnerShadow(
                                    shadows: [
                                      Shadow(
                                          color: dark_pink.withOpacity(0.25),
                                          blurRadius: 9,
                                          offset: const Offset(6, 8)),
                                      Shadow(
                                          color: Colors.white.withOpacity(0.8),
                                          blurRadius: 9,
                                          offset: const Offset(-8, -8)),
                                    ],
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: light_pink,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 24,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFFF9BDB9),
                                        dark_pink
                                      ],begin: Alignment.topLeft,
                                          end: Alignment.bottomRight
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: dark_pink.withOpacity(0.95),
                                          offset: Offset(2, 2),
                                          blurRadius: 13,
                                        ),
                                        BoxShadow(
                                            color: Colors.white,
                                            offset: Offset(-4, -4),
                                            blurRadius: 10
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
          Container(
            width: fw,
            height: fh*0.12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      light_pink,
                      bg
                    ],begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: text_color,
                          blurRadius: 8,
                        offset: Offset(1, 1)
                      ),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(-5, -5)
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Icon(Icons.bar_chart,color: dark_pink,size: 32,),),
                ),
                SizedBox(
                  height: 65,
                  width: 65,
                  child: InnerShadow(
                    shadows: [
                      Shadow(
                          color: text_color.withOpacity(0.4),
                          blurRadius: 9,
                          offset: const Offset(6, 8)),
                      Shadow(
                          color: Colors.white.withOpacity(0.8),
                          blurRadius: 9,
                          offset: const Offset(-8, -8)),
                    ],
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: light_pink,
                      ),
                      child: Icon(Icons.home,color: dark_pink,size: 33.5,shadows: [BoxShadow(color: dark_pink,blurRadius: 5,offset: Offset(1, 1))],),
                    ),
                  ),
                ),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        light_pink,
                        bg
                      ],begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: text_color,
                            blurRadius: 8,
                            offset: Offset(1, 1)
                        ),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(-5, -5)
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Icon(Icons.person,color: dark_pink,size: 32,),),
                ),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        light_pink,
                        bg
                      ],begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: text_color,
                            blurRadius: 8,
                            offset: Offset(1, 1)
                        ),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(-5, -5)
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Icon(Icons.settings,color: dark_pink,size: 32,),),
                ),
                SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
