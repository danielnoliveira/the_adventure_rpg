import 'package:the_adventure_rpg/core/domain/entities/base_entity.dart';

class PlayerEntity extends BaseEntity {
  late Inventory inventory;
  late Wallet wallet;
  late EquipmentsSet equipmentsSet;
  late int xp;
  late List<Effect> temporaryStatus;
  late List<Skill> skills;
  late List<Skill> skillsSelected;
  late List<Quest> questsDiary;

  PlayerEntity({
    required String id,
    required int strength,
    required int dexterity,
    required int constitution,
    required int intelligence,
    required int life,
    required int mana,
    required int attack,
    required int defense,
    required int level,
  }) : super(
          id: id,
          strength: strength,
          dexterity: dexterity,
          constitution: constitution,
          intelligence: intelligence,
          life: life,
          mana: mana,
          attack: attack,
          defense: defense,
          level: level,
        ) {}
}
