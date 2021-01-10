import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Trainings',style: TextStyle(fontSize: 28.0),),
      ),
      endDrawer: Drawer(),
      body: Column(
        children:[
          Container(
            color: Colors.red[400],
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0,),
              Container(
                margin: EdgeInsets.only(right: 230.0),
                height: MediaQuery.of(context).size.height*0.1,
                child: Text('Highlights',style: TextStyle(color: Colors.white,fontSize: 18.0),),
              ),
              CarouselSlider(
                options: CarouselOptions(height: MediaQuery.of(context).size.height*0.2,),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                          ),
                          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ), SizedBox(height: 30.0,),
          Container(
            decoration: BoxDecoration(
              
            ),
            //color: Colors.white,
            child: Text('Filter',style: TextStyle(color: Colors.black54),),
          )],
      ),
    );
  }
}
