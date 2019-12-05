import 'package:flutter/material.dart';
import './hal_computer.dart' as computer;
import './hal_Radio.dart' as radio;
import './hal_Hedset.dart' as hedset;
import './hal_smartfhone.dart' as smartfhone;


void main(){
  runApp(new MaterialApp(

  title: 'App Go_Print',
  home: new Home(),
));
} 
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState(){
    controller = new TabController(vsync: this, length: 4);
    super .initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text('Toko Elektronik'),
        bottom: new TabBar(
          controller: controller ,
        tabs: <Widget>[
          new Tab(icon : new Icon(Icons.computer),text: 'Computer',),
          new Tab(icon : new Icon(Icons.headset),text:  'Headsed',),
          new Tab(icon : new Icon(Icons.radio),text: 'Radio',),
          new Tab(icon : new Icon(Icons.smartphone),text: 'Smartfhone',),
        ],
        ),
      ),
      body: new TabBarView(
        controller:  controller,
        children: <Widget>[
          new computer.Computer(),
          new hedset.Headset(),
          new radio.Radio(),
          new smartfhone.Smartfhone(), 

        ],
      ),
      bottomNavigationBar: new Material(
         color: Colors.blueAccent,
      child: new TabBar(
          controller: controller ,
        tabs: <Widget>[
          new Tab(icon : new Icon(Icons.computer),),
          new Tab(icon : new Icon(Icons.headset),),
          new Tab(icon : new Icon(Icons.radio),),
          new Tab(icon : new Icon(Icons.smartphone),),
        ],
        ),
      ),
    
    );
  }
}
   