import 'dart:async';

// import 'package:drivers_app/authentication/login_screen.dart';
// import 'package:drivers_app/authentication/signup_screen.dart';
// import 'package:drivers_app/global/global.dart';
// import 'package:drivers_app/mainScreens/main_screen.dart';
import 'package:flutter/material.dart';

import '../authentication/login_screen.dart';
import '../global/global.dart';
import '../mainScreens/main_screen.dart';


class MySplashScreen extends StatefulWidget
{
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen>
{

  startTimer()
  {
    Timer(const Duration(seconds: 3), () async
    {
      if(await fAuth.currentUser != null)
      {
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreen()));
      }
      else
      {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    
    startTimer();
  }
  
  @override
  Widget build(BuildContext context)
  {
    return Material(
      child: Container(
        color: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("images/amb.png"),

              const SizedBox(height: 10,),

              Center(
                child: const Text(
                  " ایمبولینس بلاو جان بچاؤ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
