

import 'package:final_project_bug_quest/asianhornet.dart';
import 'package:final_project_bug_quest/honeybee.dart';
import 'package:flutter/material.dart';
import 'insect.dart';

void main() {
  runApp(MaterialApp(home:MainScreenWidget()));
}

//StatelessWidgets
class MainScreenWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/honeycomb.png"),fit: BoxFit.fitHeight

                )),
            child: Column(
              children:<Widget>[
                Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/honeycomb.png")))),
                Center(child: Text("BUQ QUEST", style: TextStyle(fontSize: 45, color: Colors.black))
                ),
                MenuWidget(),

              ],)
        )
    );
  }
}
//The screen that lets you choose which bug you would like to play
class ChooseBugScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Choose Your Bug"),) ,
      body: Container(
        child: Row(
          children:<Widget> [

            BugWidget(HoneyBeeWidget(),"A Japanese Honeybee. Generally  tough and hard to bring down.", "honeybee.png"),
            BugWidget(HoneyBeeWidget(), "Hornet", "hornet.png"),
            BugWidget(HoneyBeeWidget(), "n/a", "n/a"),




          ],
        ),
      ),
    );
  }
}
//The How-To-Play Screen
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
//Custom widget on the screen that holds the individual bug class and information to be chosen
class BugWidget extends StatelessWidget{
  final HoneyBeeWidget widget;
  final description;
  final image;

  BugWidget(this.widget, this.description, this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(width: 2.0,color: Colors.black),
              left: BorderSide(width: 2.0,color: Colors.black),
              right: BorderSide(width: 2.0,color: Colors.black),
              bottom: BorderSide(width: 2.0,color: Colors.black)
          )
      ),
      child: Column(children: <Widget> [
        Image(image:AssetImage("images/${image}"), width: 100),
        Text("${description}"),
        ElevatedButton(
          onPressed: (){
            },
          child: widget,
          style: ElevatedButton.styleFrom(
              primary: Colors.amber),
        )
      ]),
      margin:EdgeInsets.all(7),
      padding: EdgeInsets.all(0),
      width: 115,
      height: 400,
    );
  }
}
class AbilitiesWidget extends StatelessWidget{
  final String ability;
  AbilitiesWidget(this.ability);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: (){

      },
      child: Text("${ability}"),),

    );
  }
}

//StatefulWidgets
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
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChooseBugScreen())
            );
          },
            child: Text("Play") ,
            style: ElevatedButton.styleFrom(
                primary: Colors.amber
              ),),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TutorialScreen())
            );
          },
            child:Text("Tutorial"),
            style: ElevatedButton.styleFrom(
              primary: Colors.amber
            ),)
        ],
      ),
    );
  }
}

//The Battle Screen
class BattleScreen extends StatefulWidget {
  final Insect playerBug;
  BattleScreen(this.playerBug);
  @override
  _BattleScreenState createState() => _BattleScreenState(playerBug);
}

class _BattleScreenState extends State<BattleScreen> {
  Insect asianHornet = new AsianHornet("Asian Hornet", 5, 7, 1, 4);
  final Insect playerBug;
  _BattleScreenState(this.playerBug);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/honeycomb.png"),)),
      child: Row (children:<Widget>[
        ElevatedButton(onPressed: (){

          asianHornet.setHealth(asianHornet.getHealth() - playerBug.attackPoints);
          print("Your species : ${playerBug.getSpecies()} + your hp : ${playerBug.getHealth()}");

        }, child: Text("Attack")),
        ElevatedButton(onPressed: (){


        }, child: Text("Defend")),
        ElevatedButton(onPressed: (){


        }, child: Text("Abilities"))
      ]),

    );
  }
}

class HoneyBeeWidget extends StatefulWidget {
  @override
  _HoneyBeeWidgetState createState() => _HoneyBeeWidgetState();
}

class _HoneyBeeWidgetState extends State<HoneyBeeWidget> {
  final HoneyBee honeyBee = new HoneyBee("Honey Bee", 10, 2, 5, 2);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: (){

        print("You have chosen ${honeyBee.getSpecies()}");
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BattleScreen(honeyBee,))
        );
      },
      child: Text("Honey Bee"),),
    );
  }
}







