import 'package:flutter/cupertino.dart';

class Product extends ChangeNotifier {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;
  bool isFavourite;
  Product(
      {@required this.id,
      this.isFavourite = false,
      this.description,
      @required this.title,
      @required this.imageUrl,
      @required this.price});

  void toggleFav() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
