import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';

class ProductCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;
  final bool showCartIcon;
  final bool initialIsFavorite;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.showCartIcon = true,
    this.initialIsFavorite = false,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late bool isFavorite;
  bool isInCart = false;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.initialIsFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image with shadow and white background
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.asset(
                    widget.imageUrl,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // Heart icon
                Positioned(
                  top: 8,
                  left: 8,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Image.asset(
                      isFavorite 
                          ? 'assets/images/like_image.png'
                          : 'assets/images/unlike_like_image.png',
                      width: 22,
                      height: 22,
                    ),
                  ),
                ),
                // Cart icon (only on Shop screen)
                if (widget.showCartIcon)
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isInCart = !isInCart;
                        });
                      },
                      child: Image.asset(
                        isInCart 
                        ? 'assets/images/add_in_cart_image.png'
                        : 'assets/images/unlike_cart_image.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        // Product info (outside the shadow container)
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            widget.title,
            style: AppTextStyles.textInProductForDesc,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            widget.price,
            style: AppTextStyles.textInProductForPrice
          ),
        ),
      ],
    );
  }
}