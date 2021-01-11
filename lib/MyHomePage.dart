import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map> _myJson = [{ "ind": "0"    ,   "title": "Safe Scrum Master(1.1)"  ,   "subtitle": "Keynote Speaker 1"  ,   "date": "+93"},
    { "ind": "1"    ,   "title": "Safe Scrum Master(1.2)"  ,   "subtitle": "Keynote Speaker 2"  ,   "date": "+93"},
    { "ind": "2"    ,   "title": "Safe Scrum Master(1.3)"  ,   "subtitle": "Keynote Speaker 3"  ,   "date": "+93"},
    { "ind": "3"    ,   "title": "Safe Scrum Master(1.4)"  ,   "subtitle": "Keynote Speaker 4"  ,   "date": "+93"},
    { "ind": "4"    ,   "title": "Safe Scrum Master(1.5)"  ,   "subtitle": "Keynote Speaker 5"  ,   "date": "+93"},
    { "ind": "5"    ,   "title": "Safe Scrum Master(1.6)"  ,   "subtitle": "Keynote Speaker 6"  ,   "date": "+93"},
    { "ind": "6"    ,   "title": "Safe Scrum Master(1.7)"  ,   "subtitle": "Keynote Speaker 7"  ,   "date": "+93"},
    { "ind": "7"    ,   "title": "Safe Scrum Master(1.8)"  ,   "subtitle": "Keynote Speaker 8"  ,   "date": "+93"},
    { "ind": "8"    ,   "title": "Safe Scrum Master(1.9)"  ,   "subtitle": "Keynote Speaker 9"  ,   "date": "+93"},
    { "ind": "9"    ,   "title": "Safe Scrum Master(1.10)"  ,   "subtitle": "Keynote Speaker 10"  ,   "date": "+93"}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Trainings',style: TextStyle(fontSize: 28.0,letterSpacing: 1.0),),
      ),
      endDrawer: Drawer(),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.2,
            color: Colors.red[400],
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.2,
            color: Colors.white,
          ),
          Expanded(
            child: Container(
              child: new ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return new  Container(
                      color: Colors.grey[200],
                      padding: EdgeInsets.fromLTRB(10,10,10,0),
                      height: MediaQuery.of(context).size.height*0.2,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5.0,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width:100,
                              child: Text('NOVEM'),
                            ),
                          Container(
                            width:150.0,
                            child: Text('${_myJson[index]['title']}'),)
                          ],

                        ),
                      ),
                    );
                  }
              ),
            ),
          ),

        ],
      ),
    );
  }
}
