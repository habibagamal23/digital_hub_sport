class Player {
  final String id;
  final String name;
  final int age;
  final String position;
  final Map<String, dynamic> performance;
  final Map<String, dynamic> psychological;
  final Map<String, dynamic> tactical;

  Player({
    required this.id,
    required this.name,
    required this.age,
    required this.position,
    required this.performance,
    required this.psychological,
    required this.tactical,
  });

  factory Player.fromFirestore(Map<String, dynamic> doc) {
    return Player(
      id: doc['id'],
      name: doc['name'],
      age: doc['age'],
      position: doc['position'],
      performance: doc['performance'],
      psychological: doc['psychological'],
      tactical: doc['tactical'],
    );
  }
}
