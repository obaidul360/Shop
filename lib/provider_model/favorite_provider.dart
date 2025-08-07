import 'package:choice/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider with ChangeNotifier {
  final List<Product> _favorites = [];
  List<Product> get favorite => _favorites;

  void toggleFavorite(Product product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }

  bool isFavorite(Product product) {
    return _favorites.contains(product);
  }
}
