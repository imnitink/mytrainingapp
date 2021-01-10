

import 'package:flutter/material.dart';
import 'package:mytrainingapp/MyHomePage.dart';
import 'package:splashscreen/splashscreen.dart';


void main(){
  runApp(
      new MaterialApp(
        home: new MyApp(),
        //home: new NewHomePage(),
      ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey(debugLabel: "Main Navigator");


  void initState() {

  }




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:new Builder(
          builder: (BuildContext context) {
            return new SplashScreen(
                seconds: 2,
                navigateAfterSeconds: new MyHomePage(),
                title: new Text('',style: TextStyle(fontSize: 32.0),),
                loaderColor: Colors.blueGrey[100],
                image:   Image.asset('assets/splash.gif'),
                backgroundColor: Colors.white,
                styleTextUnderTheLoader: new TextStyle(color: Colors.grey[500]),
                photoSize: MediaQuery.of(context).size.width*0.40
              /*onClick: ()=>print("Flutter Egypt"),*/
            );
          }),);
  }


}