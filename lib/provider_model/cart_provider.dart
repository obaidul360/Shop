import 'package:flutter/foundation.dart';
import '../model/product_model.dart';

class CartProvider with ChangeNotifier{
  final Map<String,CartItems> _items ={};
  Map<String, CartItems> get items =>_items;


  double get totalAmount{
    double total =0.0;
    _items.forEach((key,cartItem){
      total +=cartItem.product.price*cartItem.quantity;
    });
    return total;
  }
   void  addItem(Product product){
    if (_items.containsKey(product.id)) {
      _items[product.id]!.quantity+=1;

    }
    else {
      _items[product.id]=CartItems(product: product);
    }
    notifyListeners();
   }

   void removeItem(String productId){
    _items.remove(productId);
    notifyListeners();
   }
   void clear(){
    _items.clear();
    notifyListeners();
   }
}
class CartItems{
  final Product product;
  int quantity;
  CartItems({required this.product, this.quantity=1});

}