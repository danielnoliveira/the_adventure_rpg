abstract class BaseEntity {
  late String id = "e_0001";
  int strength = 0;
  int dexterity = 0;
  int constitution = 0;
  int intelligence = 0;
  int life = 0;
  int mana = 0;
  int attack = 0;
  int defense = 0;
  int level = 0;

  BaseEntity({
    required this.id,
    required this.strength,
    required this.dexterity,
    required this.constitution,
    required this.intelligence,
    required this.life,
    required this.mana,
    required this.attack,
    required this.defense,
    required this.level,
  });
}
