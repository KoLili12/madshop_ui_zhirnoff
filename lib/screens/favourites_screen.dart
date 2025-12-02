import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import '../widgets/product_card.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> favoriteProducts = [
      {
        'image': 'assets/images/placeholder_image_1.png',
        'title': 'Lorem ipsum dolor sit amet consectetur',
        'price': '\$17,00',
      },
      {
        'image': 'assets/images/placeholder_image_2.png',
        'title': 'Lorem ipsum dolor sit amet consectetur',
        'price': '\$17,00',
      },
      {
        'image': 'assets/images/placeholder_image_3.png',
        'title': 'Lorem ipsum dolor sit amet consectetur',
        'price': '\$17,00',
      },
      {
        'image': 'assets/images/placeholder_image_4.png',
        'title': 'Lorem ipsum dolor sit amet consectetur',
        'price': '\$17,00',
      },
      {
        'image': 'assets/images/placeholder_image_5.png',
        'title': 'Lorem ipsum dolor sit amet consectetur',
        'price': '\$17,00',
      },
      {
        'image': 'assets/images/placeholder_image_6.png',
        'title': 'Lorem ipsum dolor sit amet consectetur',
        'price': '\$17,00',
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Title
              Text('Favourites', style: AppTextStyles.headline),
              const SizedBox(height: 20),
              // Products Grid
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: favoriteProducts.length,
                  itemBuilder: (context, index) {
                    final product = favoriteProducts[index];
                    return ProductCard(
                      imageUrl: product['image'],
                      title: product['title'],
                      price: product['price'],
                      showCartIcon: false,
                      initialIsFavorite: true,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}