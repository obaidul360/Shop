import 'package:choice/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductPrvider with ChangeNotifier{

  List<Product> _items = [
    Product(
      id: "a1",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a2",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a3",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a4",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a5",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a6",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a7",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a8",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a9",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a10",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a11",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a12",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a13",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a14",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a15",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a16",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a17",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a18",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a19",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a20",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a21",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a22",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a23",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a24",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a25",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a26",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a27",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a28",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a29",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a30",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a31",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a32",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a33",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a34",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a35",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a36",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a37",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a38",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a39",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
    Product(
      id: "a40",
      title: "T_Shart",
      description: "Soft & Smooth",
      price: 40.8,
      imageUrl:
          "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
    ),
    Product(
      id: "a41",
      title: "Jeans Pant",
      description: "Estazes",
      price: 68.50,
      imageUrl:
          "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    ),
    Product(
      id: "a42",
      title: "Watch",
      description: "Looking Good and Goald Colors",
      price: 80.9,
      imageUrl:
          "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    ),
  ];

  List<Product> get items =>[..._items];
  Product findById(String id){
    return _items.firstWhere((prod)=>prod.id ==id);
  }
}
