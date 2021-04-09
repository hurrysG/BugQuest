import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home:MainScreenWidget()));
}

class MainScreenWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            child: Column(
              children:<Widget> [
                Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/honeycomb.png")))),
                Center(child: Text("BUQ QUEST", style: TextStyle(fontSize: 45, color: Colors.amber))
                ),
                MenuWidget(),

              ],)
        )
    );
  }
}

class ChooseBugScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children:<Widget> [
            Text("Choose your Bug")
          ],
        ),
      ),
    );
  }
}

class TutorialScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children:<Widget> [
            Text("How to play:")
          ],
        ),
      ),
    );

  }
}
class MenuWidget extends StatefulWidget {
  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    print("Hello");
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChooseBugScreen())
            );
          }, child: Text("Play") , color: Colors.orange,),
          RaisedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TutorialScreen())
            );
          },
            child:Text("Tutorial"), color: Colors.orange)
        ],
      ),

    );
  }
}



