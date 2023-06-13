class CharacterResponse_dto{

  late String name;
  late String lastName;
  late int Age;
  late String history;
  late String statistics;
  late int RaceID;

  CharacterResponse_dto(this.name,this.lastName,this.Age,this.history,this.RaceID, json);

  factory CharacterResponse_dto.fromJson(Map<String, dynamic> json){
    return CharacterResponse_dto(
        json['name'],
        json['lastName'],
        json['age'],
        json['histry'],
        json['statistics'],
        json['RaceID']
    );
  }
}