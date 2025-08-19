import 'package:choice/pages/sorted_product_list.dart';
import 'package:choice/provider_model/carousel_slider_provider.dart'
    hide CarouselSlider;
import 'package:choice/provider_model/cart_provider.dart';
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
  List<String> sortedNameList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sortedNameList = Provider.of<ProductPrvider>(
      context,
      listen: false,
    ).getProductNameList();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, child) {
        return Consumer<ProductPrvider>(
          builder: (context, productProvider, child) {
            final cartProvider = Provider.of<CartProvider>(context);
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
                    items: CarouselSliderData().sliderList.map((item) {
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
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(),
                  // Two text Column start
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

                            // Two text Column end
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sortedNameList.length,
                        itemBuilder: (context, index) {
                          return ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SortedProductList(
                                    name: sortedNameList[index],
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.green,
                                width: 2,
                              ), // border color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 8,
                              ),
                            ),
                            child: Text(sortedNameList[index]),
                          );
                        },
                      ),
                    ),
                  ),
                  const Divider(),

                  // ===== Product Grid =====
                  Expanded(
                    child: GridView.builder(
                      itemCount: productProvider.items.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 3 / 4,
                          ),
                      itemBuilder: (context, index) {
                        final product = productProvider.items[index];
                        final isFavorite = favoriteProvider.isFavorite(product);
                        return InkWell(
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
                              title: Text(
                                product.title,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                              leading: IconButton(
                                onPressed: () {
                                  favoriteProvider.toggleFavorite(product);
                                },
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,

                                  color: Colors.red,
                                ),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
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
                ],
              ),
            );
          },
        );
      },
    );
  }
}
