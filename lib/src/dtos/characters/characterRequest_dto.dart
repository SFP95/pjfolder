import 'dart:core';

class CharacterCreateInputDto{

  late String name;
  late String surname;
  late int age;
  late String story;
  late String statistics;
  late int race;

  CharacterCreateInputDto(this.name,this.surname,this.age,this.story,this.race);

  CharacterCreateInputDto.fromJson(Map<String, dynamic> json)
    :   name = json['name'],
        surname = json['surname'],
        age = json ['age'],
        story = json['story'],
        statistics = json['statistics'],
        race = json['race']
  ;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'age':age,
      'story':story,
      'statistics':statistics,
      'race':race
    };
  }
}


