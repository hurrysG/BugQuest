class Insect{
  String species;
  int healthBar;
  int attackPoints;
  int defensePoints;
  int speed;

  Insect(String species, int healthBar, int attackPoints, int defensePoints, int speed) {
    this.species = species;
    this.healthBar = healthBar;
    this.attackPoints = attackPoints;
    this.defensePoints = defensePoints;
    this.speed = speed;
  }
  String getSpecies(){
    return this.species;
  }
  void setSpecies(species){
    this.species = species;
  }
  int getHealth(){
    return this.healthBar;
  }
  void setHealth(health){
    return this.healthBar = health;
  }
  int getAttack(){
    return this.attackPoints;
  }
  void setAttack(attack){
    return this.attackPoints = attack;
  }
  int getDefense(defense){
    return this.defensePoints;
  }
  void setDefense(defense){
    return this.defensePoints = defense;
  }
  int Attack(defensePoints){
    var damageDealt = this.attackPoints - defensePoints;
    if (damageDealt >= 1){
      return damageDealt;
    }else{
      return 1;
    }
  }
}