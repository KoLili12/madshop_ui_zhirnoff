import 'package:flutter/material.dart';
import 'cart_screen.dart';
import '../theme/app_colors.dart';
import 'shop_screen.dart';
import 'favourites_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ShopScreen(),
    const FavouritesScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNavItem(
                  icon: Image.asset(
                    'assets/images/tabbar_items/home.png',
                    height: 26,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/tabbar_items/active_home.png',
                    height: 26,
                  ),
                  index: 0,
                ),
                _buildNavItem(
                  icon: Image.asset(
                    'assets/images/tabbar_items/heart.png',
                    height: 26,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/tabbar_items/active_heart.png',
                    height: 26,
                  ),
                  index: 1,
                ),
                _buildNavItem(
                  icon: Image.asset(
                    'assets/images/tabbar_items/cart.png',
                    height: 26,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/tabbar_items/active_cart.png',
                    height: 26,
                  ),
                  index: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required Widget icon,
    required Widget activeIcon,
    required int index,
  }) {
    final bool isActive = _currentIndex == index;

    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isActive ? activeIcon : icon,
            const SizedBox(height: 6),

            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              height: 3,
              width: isActive ? 12 : 0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
