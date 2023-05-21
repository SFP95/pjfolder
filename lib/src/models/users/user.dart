import '../character/Character.dart';
import '../game/Campaing.dart';
import '../game/Game.dart';

class User{
  late int id;
  late String alias;
  late int identityId;
  late DateTime birthDate;
  late String imageUrl;
  //late List<Character>? characters;
  //late List<Campaing>? campaings;
  //late List<Game>? games;

  User(this.id,this.alias,this.identityId,this.birthDate,this.imageUrl/*,this.characters,this.campaings,this.games*/);

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        alias = json['alias'],
        identityId = json['identityId'],
        birthDate = json['birthDate'],
        imageUrl = json['imageUrl']//,
        //characters = json['characters'],
        //campaings = json['campaings'],
        //games = json['games']
  ;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'alias': alias,
      'identityId': identityId,
      'birthDate': birthDate,
      'imageUrl': imageUrl,
      /*'characters': characters,
      'campaings': campaings,
      'games': games*/
    };
  }

}