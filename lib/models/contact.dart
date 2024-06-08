class Contact {
  int id;
  String name;
  String number;
  Contact({
    required this.number,
    required this.name,
    required this.id,
  });

  static fromMap(Map<String, dynamic> row) {}
}
