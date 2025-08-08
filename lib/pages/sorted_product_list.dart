import 'package:choice/model/product_model.dart';
import 'package:choice/provider_model/carousel_slider_provider.dart'
    hide CarouselSlider;
import 'package:choice/provider_model/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:choice/provider_model/product_provider.dart';

import 'details_page.dart';

class SortedProductList extends StatefulWidget {
  final String name;
  const SortedProductList({super.key, required this.name});

  @override
  State<SortedProductList> createState() => _SortedProductListState();
}

class _SortedProductListState extends State<SortedProductList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, child) {
        return Consumer<ProductPrvider>(
          builder: (context, productProvider, child) {
            List<Product> products = List.from(
              productProvider.items.where(
                (e) => e.title.toLowerCase() == widget.name.toLowerCase(),
              ),
            );

            return Scaffold(
              appBar: AppBar(
                title: Text("All ${widget.name} (${products.length})"),
                backgroundColor: Color(0xFFE6E1E0),
                centerTitle: true,
              ),
              body: Column(
                children: [
                  // ===== Product Grid =====
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.builder(
                        itemCount: products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 3 / 4,
                            ),
                        itemBuilder: (context, index) {
                          final product = products[index];
                          final isFavorite = favoriteProvider.isFavorite(
                            product,
                          );
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
          },
        );
      },
    );
  }
}
