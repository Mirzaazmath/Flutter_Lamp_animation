import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:const Color(0xff8157eb),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 7,
              height: 90,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff5730a3),
                  Color(0xff8435b5)
                ]
              )
              ),
            ),

          ),
          Container(width: 80,
            height: 2,
            color:const  Color(0xff713fca),
          ),
          Stack(
            children: [
              Column(

                children: [
                  Container(
                    height: 123,
                    width: 120,
                   decoration: BoxDecoration(
                     border: Border.all(color:const  Color(0xffc05fd0)),
                     color:const  Color(0xfff578d3),
                     borderRadius:const  BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                   ),

                  ),
                  Container(height: 20,)
                ],
              ),
              Center(
                child: Column(

                  children: [
                    Container(height: 105,),
                    Stack(
                      children: [
                        ClipOval(
                          clipBehavior: Clip.antiAliasWithSaveLayer,

                          child: Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: const   Color(0xff5730a3),),
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff552c95),
                                      Color(0xffc492ee)
                                    ]
                                ),

                            ),
                          ),
                        ),
                        ClipOval(
                          clipBehavior: Clip.antiAliasWithSaveLayer,

                          child: Container(
                            height: 30,
                            width: 120,
                            decoration:  BoxDecoration(

                              gradient:  LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                  const   Color(0xfffdfced).withOpacity(_currentSliderValue),
                                   const  Color(0xfffffdcd).withOpacity(_currentSliderValue),
                                  ]
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
             Center(
               child: Container(
                 margin:const  EdgeInsets.only(top: 20),
                  height: 60,
                  width: 60,
                 decoration:  BoxDecoration(
                     boxShadow: [
                       BoxShadow(
                           color: Colors.white.withOpacity(_currentSliderValue),
                           spreadRadius: 7,
                           blurRadius: 25
                       )
                     ]
                 ),
                ),
             ),

            ],
          ),
         const  SizedBox(height: 20,),
          Stack(
            children: [
              Container(
                width: double.infinity,
                margin:const  EdgeInsets.symmetric(horizontal: 20),
                height: 200,
                decoration:  BoxDecoration(

                    gradient:  LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                         const  Color(0xfffec2e9).withOpacity(_currentSliderValue),
                         const  Color(0xff9461ec).withOpacity(_currentSliderValue),
                        ]
                    ),


                  borderRadius:const  BorderRadius.only(topRight: Radius.circular(250),topLeft: Radius.circular(250))

              ),

              ),
              Column(
                children: [
                 const  SizedBox(height: 70,),
                  Center(
                    child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color:const  Color(0xff9770f1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Slider(
                        activeColor:const  Color(0xfffadfff),
                        inactiveColor: Colors.white,
                        value: _currentSliderValue,
                        max: 1,
                        // divisions: 5,
                        onChangeStart:(double value){
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },

                        // label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                         },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )

        ],
      ),

    );
  }
}
