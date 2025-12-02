import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import '../widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> cartItems = [
    {
      'image': 'assets/images/placeholder_image_2.png',
      'title': 'Lorem ipsum dolor sit amet consectetur.',
      'color': 'Pink',
      'size': 'M',
      'price': '\$17,00',
      'quantity': 1,
    },
    {
      'image': 'assets/images/placeholder_image_5.png',
      'title': 'Lorem ipsum dolor sit amet consectetur.',
      'color': 'Pink',
      'size': 'M',
      'price': '\$17,00',
      'quantity': 1,
    },
  ];

  void _removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  double get totalPrice {
    return cartItems.length * 17.00;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Text('Cart', style: AppTextStyles.headline.copyWith( 
                    fontSize: 28
                  )),
                  const SizedBox(width: 12),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: AppColors.buttonPrimary.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${cartItems.length}',
                        style: AppTextStyles.headline.copyWith(
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Cart Items List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return CartItemCard(
                    imageUrl: item['image'],
                    title: item['title'],
                    color: item['color'],
                    size: item['size'],
                    price: item['price'],
                    initialQuantity: item['quantity'],
                    onDelete: () => _removeItem(index),
                  );
                },
              ),
            ),

            // Bottom Bar with Total and Checkout
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.backgroundCartBar,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, -1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Total ',
                        style: AppTextStyles.headline.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '\$${totalPrice.toStringAsFixed(2)}',
                        style: AppTextStyles.title.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 128,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                      ),
                      child: Text('Checkout', style: AppTextStyles.button.copyWith(fontSize: 16))
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}