import 'package:flutter/material.dart';

import '../model/product_model.dart';

class ViewAllPage extends StatefulWidget {
  final Product product;
  const ViewAllPage({super.key, required this.product});

  @override
  State<ViewAllPage> createState() => _ViewAllPageState();
}

class _ViewAllPageState extends State<ViewAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.product.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Text("All Product")
        ],
      ),
    );
  }
}
