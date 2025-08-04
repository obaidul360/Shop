import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:choice/provider_model/product_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<String> imageList = [
    "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
  ];

  final List<String> captions = [
    'Jeans 15% off',
    'Watch 13% off',
    'T-Shirt 10% Off',
  ];

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductPrvider>(context);
    final products = productProvider.items;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ===== Carousel Section =====
          CarouselSlider(
            options: CarouselOptions(
              height: 180,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: imageList.map(
                  (item) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(item, fit: BoxFit.cover, width: double.infinity),
                );
              },
            ).toList(),
          ),

          // ===== Caption Text =====
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              captions[_currentIndex],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          const Divider(),

          // ===== Product Grid =====
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return GridTile(
                    footer: Container(
                      color: Colors.black54,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          product.title,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(product.imageUrl, fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}




/*import 'package:choice/provider_model/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<String> imageList = [
    "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg",
  ];

  final List<String> captions = [
    'Jeans 15% off',
    'Watch 13% off',
    'T-Shart 10% Off',
  ];

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductPrvider>(context);
    final products = productProvider.items;
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: imageList
                .map(
                  (item) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(item, fit: BoxFit.cover, width: 1000),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 20),
          Text(
            captions[_currentIndex],
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20),
          Text("Slider", style: TextStyle()),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(15),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisExtent: 10,
                childAspectRatio: 3 / 4,
              ),
            
              itemBuilder: ( context,  index) {
                final product =products[index];
                return GridTile(
                  footer: GridTileBar(
                    backgroundColor: Color(0xFF383433),
                    title: Text(product.title),
            
                  ),
                  child: Image.network(product.imageUrl,fit: BoxFit.cover,),);
              },
            ),
          ),
        ],
      ),
    );
  }
}*/

/*
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final List<String> carousel =[
    "https://www.shutterstock.com/image-photo/fashion-trendy-womens-jeans-isolated-600nw-2466839305.jpg",
    "https://naviforce.com.bd/wp-content/uploads/2024/07/Ha5d7165fe0714e7aa5049fc093b1f1b8F.jpg_1200x1200-jpg-1.webp",
    "https://www.shutterstock.com/image-vector/white-tshirts-copy-space-realistic-260nw-2447288155.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    //final carosuelSlider =Provider.of<CarouselProvider>(context);
    //final slider =carosuelSlider.carousel;
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("HomePages")),backgroundColor: Colors.blueGrey,),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CarouselSlider(
                      options: CarouselOptions(
                        height: 150,
                        autoPlay: true,
                        aspectRatio: 16/9,
                        enlargeCenterPage: true,
                      ),
                      items:carousel.

                  ),

                  Text("HomePage")
                ],
              ),
            ),
    );
  }
}
*/
