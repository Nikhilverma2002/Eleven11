class VideoData{
  static final items = [
    Item2(id: 1, name: "Osteoarthritis के कारण घुटनो का दर्द केवल दवाओं से ठीक हुआ है", image: 'assets/Rectangle 615.png', ),
    Item2(id: 2, name: "Osteoarthritis के कारण घुटनो का दर्द केवल दवाओं से ठीक हुआ है", image: 'assets/Rectangle 625.png', ),
    Item2(id: 3, name: "Osteoarthritis के कारण घुटनो का दर्द केवल दवाओं से ठीक हुआ है", image: 'assets/Rectangle 615.png', ),
  ];
}

class Item2 {
  final int id;
  final String name;
  final String image;


  Item2({ required this.id,
    required this.name,
    required this.image,
  });

}