import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import '../widgets/product_card.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final List<Map<String, dynamic>> products = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Title and Category Chip
              Row(
                children: [
                  Text('Shop', style: AppTextStyles.headline),
                  const SizedBox(width: 16),
                  Container(
                    width: 270,
                    height: 36,
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.buttonPrimary.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Clothing',
                      style: AppTextStyles.textInSearchBarShopScreen,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Products Grid
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCard(
                      imageUrl: product['image'],
                      title: product['title'],
                      price: product['price'],
                      showCartIcon: true,
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
