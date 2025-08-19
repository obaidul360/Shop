import 'package:choice/model/product_model.dart';
import 'package:choice/provider_model/cart_provider.dart';
import 'package:choice/provider_model/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {

  const CartPage({super.key,});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductPrvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    final cartPageItems = cartProvider.items;
    final productProviderItems = productProvider.items;
    return Scaffold(
      appBar: AppBar(title: Text("Add to Cart Page")),
      body: Column(
        children: [
          Expanded(
            child: cartPageItems.isEmpty
                ? const Center(child: Text("Your Cart Page is Empty"))
                : ListView(
                    children: cartPageItems.values.map((cartItem) {
                      return ListTile(
                        leading: Image.network(
                          cartItem.product.imageUrl,
                          width: 60,
                        ),
                        title: Text(
                          cartItem.product.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        subtitle: Text(
                          ""
                          "Qty: ${cartItem.quantity}| \$${(cartItem.quantity * cartItem.product.price).toStringAsFixed(2)}",
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            cartProvider.removeItem(cartItem.product.id);
                          },
                          icon: Icon(Icons.delete, size: 25),
                        ),
                      );
                    }).toList(),
                  ),
          ),
        ],
      ),
    );
  }
}
