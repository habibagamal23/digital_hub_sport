class Sport {
  final String name;
  final String iconPath;

  Sport({required this.name, required this.iconPath});
}

final List<Sport> sports = [
  Sport(name: 'Football', iconPath: 'assets/football.svg'),
  Sport(name: 'Volleyball', iconPath: 'assets/volleyball.svg'),
  Sport(name: 'Handball', iconPath: 'assets/handball 1.svg'),
  Sport(name: 'Basketball', iconPath: 'assets/basketball.svg'),
];
