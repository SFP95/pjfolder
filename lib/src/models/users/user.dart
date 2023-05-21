import '../character/Character.dart';
import '../game/Campaing.dart';
import '../game/Game.dart';

class User{
  late int id;
  late String alias;
  late int identityId;
  late DateTime birthDate;
  late String imageUrl;
  late List<Character> characters;
  late List<Campaing> campaings;
  late List<Game> games;

  User(this.id,this.alias,this.identityId,this.birthDate,this.imageUrl,this.characters,this.campaings,this.games);
}