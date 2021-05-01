import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/theme/text_styles.dart';
import 'package:flutter_health_care_app/theme/extention.dart';

/*
Title:SplashScreen
Purpose:SplashScreen
Created By:Kalpesh Khandla
Created Date: 30 April 2021
*/


class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => HomePageScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/doctor_face.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .6,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [LightColor.purpleExtraLight, LightColor.purple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Image.asset(
                "assets/heartbeat.png",
                color: Colors.white,
                height: 100,
              ),
              Text(
                "Time Health",
                style: TextStyles.h1Style.white,
              ),
              Text(
                "By healthcare Evolution",
                style: TextStyles.bodySm.white.bold,
              ),
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
            ],
          ).alignTopCenter,
        ],
      ),
    );
  }
}
