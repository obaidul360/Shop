import 'package:choice/model/product_model.dart';
import 'package:choice/pages/home_page.dart';
import 'package:flutter/material.dart';

class DetailsePaggeScreen extends StatefulWidget {
  final Product product;
  const DetailsePaggeScreen({super.key, required this.product});

  @override
  State<DetailsePaggeScreen> createState() => _DetailsePaggeScreenState();
}

class _DetailsePaggeScreenState extends State<DetailsePaggeScreen> {
  @override
  Widget build(BuildContext context) {
    final weight = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.product.title,
          style: TextStyle(
            fontSize: 23,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            size: 25,
            color: Colors.black54,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.network(widget.product.imageUrl, height: 200, width: weight),
          SizedBox(height: 15),
          Text(
            widget.product.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 25,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 15),
          Text(
            widget.product.description,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 22,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
