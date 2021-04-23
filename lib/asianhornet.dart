import 'package:final_project_bug_quest/insect.dart';

class AsianHornet extends Insect{
  AsianHornet(String species, int healthBar, int attackPoints, int defensePoints, int speed) : super(species, healthBar, attackPoints, defensePoints, speed);

  int Ability(){
    return 7;
  }

}