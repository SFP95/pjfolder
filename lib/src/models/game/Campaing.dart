class Campaing {
  late int id;
  late String name;

  Campaing(this.id, this.name);

  factory Campaing.fromJson(Map<String, dynamic> json) {
    return Campaing(
      json['id'],
      json['name'],
    );
  }
}