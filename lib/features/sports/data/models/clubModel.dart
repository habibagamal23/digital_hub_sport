class Club {
  final String id;
  final String name;
  final String location;

  Club({
    required this.id,
    required this.name,
    required this.location,
  });

  factory Club.fromFirestore(Map<String, dynamic> doc) {
    return Club(
      id: doc['id'],
      name: doc['name'],
      location: doc['location'],
    );
  }
}
