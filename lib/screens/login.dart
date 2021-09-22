import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              stops: [0.2,0.6,1],
              colors: [
                Colors.lightBlue.shade400.withOpacity(0.8),
                Colors.lightBlue.shade300.withOpacity(0.8),
                Colors.lightBlue.shade50.withOpacity(1),
              ],
              // tileMode: TileMode.repeated,
            )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                // color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Text("Dashboard",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 130,),
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
                    top: 3,
                    left: 6,
                    child: Icon(
                      Icons.person,
                      size:70,
                      color: Colors.white,
                    )
                )
              ],
            ),
            // Icon(Icons.account_circle_outlined,color: Colors.white,size: 60,),
            SizedBox(height: 40,),
            Text("Log in to your account",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              color: Colors.white
            )
              ,),
            SizedBox(height: 50,),
            Container(
              width: 280,height: 45,
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade50.withOpacity(0.3),
                  // color: Colors.lightBlue.shade300,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Center(child: Text("Phone, email or username",
                style: TextStyle(
                  fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                ),)),
            ),
            SizedBox(height: 10,),
            Container(
              width: 280,height: 45,
              decoration: BoxDecoration(
                  color: Colors.lightBlue.shade50.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Center(child: Text("Password",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                ),)),
            ),
            SizedBox(height: 25,),
            Container(
              width: 280,height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Center(child: Text("Log in",
                style: TextStyle(
                  fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue.shade400
                ),)),
            ),
            SizedBox(height: 20,),
            Text('Create a new account',
            style: TextStyle(fontSize: 15,color: Colors.white),)
            
          ],
        ),
      ),
    );
  }
}
