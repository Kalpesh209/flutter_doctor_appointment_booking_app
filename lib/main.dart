import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/config/route.dart';
import 'package:flutter_health_care_app/theme/theme.dart';


/*
Title:Entry Point of a Application
Purpose:Entry Point of a Application
Created By:Kalpesh Khandla
Created Date: 30 April 2021
*/


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Health Care App',
      theme:AppTheme.lightTheme,
      routes: Routes.getRoute(),
        onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
     
    );
  }
}

