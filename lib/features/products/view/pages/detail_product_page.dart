import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/products/view/pages/cart_page.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(AppImages.back),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const CartPage();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.ease;

                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));

                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Image.asset(
              AppImages.cart,
              width: 44,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        title: const Text('Sneaker Shop'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nike Air Max 270\nEssential',
              style: TextStyle(fontSize: 26),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Men's Shoes",
              style: TextStyle(color: AppColors.lightGrey),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Rp 799.900',
              style: TextStyle(fontSize: 26, fontFamily: 'Poppins'),
            ),
            Image.asset(AppImages.detailShoes),
            const Text(
              "The Max Air 270 Unit Delivers Unrivaled, All-Day Comfort. The Sleek, Running-Inspired Design\nRoots You to Everything Nike........",
              style: TextStyle(color: AppColors.lightGrey),
            ),
            Container(
              padding: const EdgeInsets.only(top: 9),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Read More',
                style:
                    TextStyle(color: AppColors.primary, fontFamily: 'Poppins'),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ImageIcon(
              AppIcons.detailFavorite,
              size: 50,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(46, 13, 46, 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.cartBottom),
                      const SizedBox(
                        width: 14,
                      ),
                      const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: AppFontWeight.semibold,
                          fontSize: AppSizes.radiusForm,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
