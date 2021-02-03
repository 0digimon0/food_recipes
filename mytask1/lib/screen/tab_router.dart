class Destination {
  const Destination(this.name, this.id);

  final int id;
  final String name;
}

const List<Destination> tabsDestination = <Destination>[
  Destination("Home", 0),
  Destination("Search", 1),
  Destination("Favorite", 2),
  Destination("Notification", 3),
];
