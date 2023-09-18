class homemodel{
  static final items = [
    Item(id: 1,name: "Back Relief", image: 'assets/Rectangle 619.png'),
    Item(id: 2,name: "Knee Relief", image: 'assets/Rectangle 621.png'),
    Item(id: 3,name: "Knee Relief", image: 'assets/Rectangle 619.png'),
  ];
}

class Item{
  final int id;
  final String name;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.image,
  });

}

class Strings {
  Strings._();
  static const String name = 'Rohan';

}

