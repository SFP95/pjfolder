import 'dart:core';

class CharacterCreateInputDto{

  late String name;
  late String lastName;
  late int Age;
  late String history;
  late String statistics;
  late int RaceID;

  CharacterCreateInputDto(this.name,this.lastName,this.Age,this.history,this.RaceID);

  CharacterCreateInputDto.fromJson(Map<String, dynamic> json)
    :   name = json['name'],
        lastName = json['lastName'],
        Age = json ['Age'],
        history = json['history'],
        statistics = json['statistics'],
        RaceID = json['RaceID']
  ;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'lastName': lastName,
      'Age':Age,
      'history':history,
      'statistics':statistics,
      'RaceID':RaceID
    };
  }
}


