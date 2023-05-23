class Character{
  late int id;
  late String name;

  Character(this.id, this.name);

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      json['id'],
      json['name'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      // Mapear otras propiedades del objeto a JSON
    };
  }
}