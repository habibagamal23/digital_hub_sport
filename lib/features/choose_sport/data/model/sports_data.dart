class Sport {
  final String name;
  final String iconPath;

  Sport({required this.name, required this.iconPath});
}

final List<Sport> sports = [
  Sport(name: 'Football', iconPath: 'assets/icons/football.svg'),
  Sport(name: 'Volleyball', iconPath: 'assets/icons/volleyball.svg'),
  Sport(name: 'Handball', iconPath: 'assets/icons/handball.svg'),
  Sport(name: 'Basketball', iconPath: 'assets/icons/basketball.svg'),
];
