import 'package:choice/provider_model/carousel_slider_provider.dart';
import 'package:choice/provider_model/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:choice/provider_model/product_provider.dart';

import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  // captions variable is Slider Discount
  final List<String> captions = [
    'Jeans 15% off',
    'Watch 13% off',
    'T-Shirt 10% Off',
  ];

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductPrvider>(context);
    final carasolSliderProvider = Provider.of<CarouselProvider>(context);
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final products = productProvider.items;
    final Slider = carasolSliderProvider.slider;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Choice"),
        backgroundColor: Color(0xFFE6E1E0),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ===== Carousel Section =====
          CarouselSlider(
            options: CarouselOptions(
              height: 110,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: Slider.map((item) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Collection",
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("View all"),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ), // border color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    /*TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Pant"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("T-Shart"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Jeans"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Shart"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Panjabi"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Share"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Tops"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Watch"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Bag"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Shoes"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Walet"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Makueb"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 2), // border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )

                ),
              ],
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
                  final isFavorite = favoriteProvider.isFavorite(product);

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsePaggeScreen(product: product),
                        ),
                      );
                    },
                    child: GridTile(
                      footer: GridTileBar(
                        backgroundColor: Colors.black54,
                        title: Text(product.title, textAlign: TextAlign.center),
                        leading: IconButton(
                          onPressed: () {
                            favoriteProvider.toggleFavorite(product);
                          },
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          product.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
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
