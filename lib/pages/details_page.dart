import 'package:choice/model/product_model.dart';
//import 'package:choice/pages/home_page.dart';
import 'package:choice/provider_model/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsePaggeScreen extends StatefulWidget {
  final Product product;
  const DetailsePaggeScreen({super.key, required this.product});

  @override
  State<DetailsePaggeScreen> createState() => _DetailsePaggeScreenState();
}

class _DetailsePaggeScreenState extends State<DetailsePaggeScreen> {
  int _quentity = 1;
  
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final weight = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.product.title,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            size: 22,
            color: Colors.black54,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.network(widget.product.imageUrl, height: 200, width: weight),
          Text(
            widget.product.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
          Text(
            widget.product.description,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          Text(
            "Price:\$${(widget.product.price * _quentity).toStringAsFixed(2)}",
            style: TextStyle(fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _quentity > 1
                    ? () => setState(() => _quentity--)
                    : null,
                icon: Icon(Icons.remove),
              ),
              Text("$_quentity", style: TextStyle(fontSize: 16)),
              IconButton(
                onPressed: () => setState(() => _quentity++),
                icon: Icon(Icons.add),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              for (int i = 0; i < _quentity; i++) {
                cartProvider.addItem(widget.product);
              }
              Navigator.pop(context);
            },
            child: Text(
              "Card to Add",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
