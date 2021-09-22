import 'package:design_screen/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.5,0.6,1],
            colors: [
              Colors.lightBlue.shade400.withOpacity(0.8),
              Colors.lightBlue.shade300.withOpacity(0.8),
              Colors.lightBlue.shade50.withOpacity(1),
          ],
          // tileMode: TileMode.repeated,
          )
        ),
        // color: Colors.lightBlue.shade400,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                // color: Colors.white,
                child: Center(child: Text("Dashboard",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                ),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Container(
                width: 300,
                height: 200,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 2),
                                  borderRadius: BorderRadius.circular(50)),
                            )
                        ),
                        Positioned(
                          top: 18,
                            left: 15,
                            child: Icon(
                              Icons.check_sharp,
                              size:47,
                              color: Colors.white,
                            )
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Welcome",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: Colors.white
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Lorem ipsum dolor sit amet,",style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                      ),),
                    ),
                    Text("consectetur adipisicing elit.",style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                    )),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 166,top: 150),
              child: Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 8,
                    height: 8,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 8,
                    height: 8,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 8,
                    height: 8,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 8,
                    height: 8,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                print("here.....");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              child: Container(
                width: 250,height: 50,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
                child: Center(child: Text("Get Started",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue.shade400
                  ),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
