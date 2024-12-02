// ignore_for_file: public_member_api_docs, sort_constructors_first
class HistoryModel {
  final String imagePath;
  final String price;
  final String name;
  final String numberOfDay;
  final DateTime date;
  HistoryModel({
    required this.imagePath,
    required this.price,
    required this.name,
    required this.numberOfDay,
    required this.date,
  });
}

List<HistoryModel> history = [
  HistoryModel(imagePath: "assets/images/bmw-logo.png",name:"bmw", price: "32", numberOfDay: "3", date: DateTime(2022,1,1)),
  HistoryModel(imagePath: "assets/images/ferrari-logo.png",name:"ferrari", price: "32", numberOfDay: "1", date: DateTime(2022,1,1)),
  HistoryModel(imagePath: "assets/images/tesla-logo.png",name:"tesla", price: "32", numberOfDay: "2", date: DateTime(2022,1,1)),
  HistoryModel(imagePath: "assets/images/ford-logo.png",name:"ford", price: "32", numberOfDay: "5", date: DateTime(2022,1,1)),
  HistoryModel(imagePath: "assets/images/bmw-logo.png",name:"bmw", price: "32", numberOfDay: "3", date: DateTime(2022,1,1)),
  HistoryModel(imagePath: "assets/images/ferrari-logo.png",name:"ferrari", price: "32", numberOfDay: "1", date: DateTime(2022,1,1)),
  HistoryModel(imagePath: "assets/images/tesla-logo.png",name:"tesla", price: "32", numberOfDay: "2", date: DateTime(2022,1,1)),
  HistoryModel(imagePath: "assets/images/ford-logo.png",name:"ford", price: "32", numberOfDay: "5", date: DateTime(2022,1,1)),
];