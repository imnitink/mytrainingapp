import 'package:carousel_extended/carousel_extended.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mytrainingapp/MyCaraousel.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _selecteCategorys = List();
  List<Map> _myJson = [{ "ind": "0"    ,   "title": "Safe Scrum Master(1.1)"  ,   "subtitle": "Keynote Speaker 1"  ,   "date": "+93", "trainingname": "Flutter","select":false},
    { "ind": "1"    ,   "title": "Safe Scrum Master(1.2)"  ,   "subtitle": "Keynote Speaker 2"  ,   "date": "+93","trainingname": "PHP","select":false},
    { "ind": "2"    ,   "title": "Safe Scrum Master(1.3)"  ,   "subtitle": "Keynote Speaker 3"  ,   "date": "+93","trainingname": "Dart","select":false},
    { "ind": "3"    ,   "title": "Safe Scrum Master(1.4)"  ,   "subtitle": "Keynote Speaker 4"  ,   "date": "+93","trainingname": "CodeIgniter","select":false},
    { "ind": "4"    ,   "title": "Safe Scrum Master(1.5)"  ,   "subtitle": "Keynote Speaker 5"  ,   "date": "+93","trainingname": "Laravel","select":false},
    { "ind": "5"    ,   "title": "Safe Scrum Master(1.6)"  ,   "subtitle": "Keynote Speaker 6"  ,   "date": "+93","trainingname": "HTML","select":false},
    { "ind": "6"    ,   "title": "Safe Scrum Master(1.7)"  ,   "subtitle": "Keynote Speaker 7"  ,   "date": "+93","trainingname": "CSS","select":false},
    { "ind": "7"    ,   "title": "Safe Scrum Master(1.8)"  ,   "subtitle": "Keynote Speaker 8"  ,   "date": "+93","trainingname": "Bootstrap","select":false},
    { "ind": "8"    ,   "title": "Safe Scrum Master(1.9)"  ,   "subtitle": "Keynote Speaker 9"  ,   "date": "+93","trainingname": "Java Script","select":false},
    { "ind": "9"    ,   "title": "Safe Scrum Master(1.10)"  ,   "subtitle": "Keynote Speaker 10"  ,   "date": "+93","trainingname": "Angular","select":false}];
  void _onCategorySelected(bool selected, category_id) {
    if (selected == true) {
      setState(() {
        _selecteCategorys.add(category_id);
      });
    } else {
      setState(() {
        _selecteCategorys.remove(category_id);
      });
    }
  }
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
          Expanded(
            child: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                color: Colors.red[400],
              ),
              Expanded(
                child: ProductTitleWithImage(),
              ),
            ],),
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
                              width:MediaQuery.of(context).size.width*0.3,
                              child: Text('NOVEM'),
                            ),
                          Column(
                            children: [

                                //width:150.0,
                                Text('Filling Fast!',textAlign:TextAlign.left ,style: TextStyle(color: Colors.red[300]),),
                                Text('${_myJson[index]['title']}',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    CircleAvatar(child: Image(image: AssetImage('assets/logo.png'),),),
                                    Column(
                                      children: [
                                        Text('Key Note Speaker'),
                                        Text('Helen Gribble'),
                                      ],
                                    ),
                                  ],
                                ),
                              RaisedButton(child:Text('Enrol Now'),onPressed:(){
                                showmodalbottomsheet();
                              })
                            ],
                          )
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
  showmodalbottomsheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height*0.45,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.grey[200],
          child: Center(
            child: Column(

              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                    child: Text('Sort and Filters',textAlign:TextAlign.left,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
              Expanded(
                child: VerticalTabs(
                  tabsWidth: 150,
                  tabBackgroundColor: Colors.grey[200],
                  selectedTabBackgroundColor: Colors.white,
                  tabs: <Tab>[
                    Tab(child: Text('Sort by'), icon: Icon(Icons.phone)),
                    Tab(child: Text('Location')),
                    Tab(child: Text('Training Name')),
                    Tab(child: Text('Trainer'))
                  ],
                  contents: <Widget>[
                    Container(child: Text('Flutter'), padding: EdgeInsets.all(20)),
                    Container(child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return CheckboxListTile(
                            value: _selecteCategorys
                                .contains(_myJson[index]['title']),
                            onChanged: (bool selected) {
                              _onCategorySelected(selected,
                                  _myJson[index]['ind']);
                            },
                            title: Text(_myJson[index]['title'],style: TextStyle(fontSize: 10.0),),
                          );
                        })),
                    Container(child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return CheckboxListTile(
                            value: _selecteCategorys
                                .contains(_myJson[index]['trainingname']),
                            onChanged: (bool selected) {
//                              _onCategorySelected(selected,
//                                  _categories['responseBody'][index]['category_id']);
                            },
                            title: Text(_myJson[index]['trainingname'],style: TextStyle(fontSize: 10.0),),
                          );
                        })),
                    Container(child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return CheckboxListTile(
                            value: _selecteCategorys
                                .contains(_myJson[index]['subtitle']),
                            onChanged: (bool selected) {
//                              _onCategorySelected(selected,
//                                  _categories['responseBody'][index]['category_id']);
                            },
                            title: Text(_myJson[index]['subtitle'],style: TextStyle(fontSize: 10.0),),
                          );
                        }))
                  ],
                ),
              ),
              ],
            ),
          ),
        );
      },
    );
  }
}
