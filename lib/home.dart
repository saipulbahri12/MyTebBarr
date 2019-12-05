import 'package:flutter/material.dart';

class Home extends StatefulWidget{
@override
_HomeState createState() => new _HomeState();

}
class _HomeState extends State<Home>with TickerProviderStateMixin{ 
  AnimationController animationControllerScren;
  Animation animationScren;
  
  @override
  void initState(){

 super.initState();
 animationControllerScren = AnimationController(
   duration: Duration(seconds: 1),vsync: this
 );
 animationScren= Tween(begin: 2.0, end: 0.0).animate(animationControllerScren);
 animationControllerScren.forward();
  }

 @override 
 Widget build (BuildContext context){
   return Scaffold(
     body: SingleChildScrollView(
       child: Stack(
        children: <Widget>[
          new AnimationScreen(animation:animationScren,)
        ],
       ),
     ),
   );
 }
  }
  class AnimationScreen extends AnimatedWidget{
    AnimationScreen({Key key, Animation<double>animation})
    :super(key: key, listenable: animation);
    Widget build(BuildContext context){
      final Animation<double> animation = listenable;
      return Container(
        width: 500.0, height: 600.0,
        color: Colors.blue[900].withOpacity(animation.value),
      );
    }
  }

 
