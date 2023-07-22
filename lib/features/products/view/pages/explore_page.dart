import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/products/view/pages/cart_page.dart';
import 'package:nike_application/features/products/view/pages/detail_product_page.dart';
import 'package:nike_application/features/products/view/pages/drawer_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int isProductCategory = 0;
  int isLove = 0;
  int isLove2 = 0;
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return const DrawerPage();
                        },
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(-1.0, 0.0);
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
                  child: Image.asset(AppImages.drawer),
                ),
                const Stack(
                  children: [
                    SizedBox(
                      width: 270,
                      child: Text(
                        'Explore',
                        style: TextStyle(fontSize: 32),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned.fill(
                      left: -130,
                      top: -30,
                      child: ImageIcon(AppIcons.exploreDecor),
                    ),
                  ],
                ),
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
                  child: Image.asset(AppImages.cart),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    controller: search,
                    keyboardType: TextInputType.name,
                    style: const TextStyle(backgroundColor: AppColors.white),
                    cursorColor: AppColors.black,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(color: AppColors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(color: AppColors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(color: AppColors.white),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(color: AppColors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(color: AppColors.white),
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      hintText: 'Looking for shoes',
                      fillColor: AppColors.white,
                      filled: true,
                      hintStyle: const TextStyle(color: AppColors.grey),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(18.4),
                        child: Image.asset(
                          AppImages.search,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Image.asset(AppImages.filter),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Select Category',
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    height: 60,
                    width: 120,
                    child: TextButton(
                      onPressed: () {
                        isProductCategory = 0;
                        setState(() {});
                      },
                      child: Container(
                        height: 40.0,
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.white),
                          borderRadius: BorderRadius.circular(AppSizes.radius),
                          color: isProductCategory == 0
                              ? AppColors.primary
                              : AppColors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'All Shoes',
                              style: TextStyle(
                                color: isProductCategory == 0
                                    ? AppColors.white
                                    : AppColors.black,
                                fontWeight: AppFontWeight.regular,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 120,
                    child: TextButton(
                      onPressed: () {
                        isProductCategory = 1;
                        setState(() {});
                      },
                      child: Container(
                        height: 40.0,
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.white),
                          borderRadius: BorderRadius.circular(AppSizes.radius),
                          color: isProductCategory == 1
                              ? AppColors.primary
                              : AppColors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Outdoor',
                              style: TextStyle(
                                color: isProductCategory == 1
                                    ? AppColors.white
                                    : AppColors.black,
                                fontWeight: AppFontWeight.regular,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 120,
                    child: TextButton(
                      onPressed: () {
                        isProductCategory = 2;
                        setState(() {});
                      },
                      child: Container(
                        height: 40.0,
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.white),
                          borderRadius: BorderRadius.circular(AppSizes.radius),
                          color: isProductCategory == 2
                              ? AppColors.primary
                              : AppColors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tennis',
                              style: TextStyle(
                                color: isProductCategory == 2
                                    ? AppColors.white
                                    : AppColors.black,
                                fontWeight: AppFontWeight.regular,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 120,
                    child: TextButton(
                      onPressed: () {
                        isProductCategory = 3;
                        setState(() {});
                      },
                      child: Container(
                        height: 40.0,
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.white),
                          borderRadius: BorderRadius.circular(AppSizes.radius),
                          color: isProductCategory == 3
                              ? AppColors.primary
                              : AppColors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Basketball',
                              style: TextStyle(
                                color: isProductCategory == 3
                                    ? AppColors.white
                                    : AppColors.black,
                                fontWeight: AppFontWeight.regular,
                                fontSize: 12,
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
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Shoes'),
                Text(
                  'See All',
                  style: TextStyle(color: AppColors.primary, fontSize: 12),
                ),
              ],
            ),
            GridView.count(
              childAspectRatio: 157 / 201,
              crossAxisSpacing: 20,
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                isLove == 0 ? isLove = 1 : isLove = 0;
                                setState(() {});
                              },
                              child: ImageIcon(
                                isLove == 0 ? AppIcons.love : AppIcons.love2,
                                color: isLove == 0
                                    ? AppColors.black
                                    : AppColors.beige,
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const DetailProductPage(),
                                    ),
                                  );
                                },
                                child: Image.asset(AppImages.bestSeller1)),
                            const Text(
                              'BEST SELLER',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            const Text(
                              'Nike Jordan',
                              style: TextStyle(
                                color: AppColors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              'Rp 302.000',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.black,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned.fill(
                      bottom: -190,
                      left: 140,
                      child: Image.asset(AppImages.plus),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                isLove2 == 0 ? isLove2 = 1 : isLove2 = 0;
                                setState(() {});
                              },
                              child: ImageIcon(
                                isLove2 == 0 ? AppIcons.love : AppIcons.love2,
                                color: isLove2 == 0
                                    ? AppColors.black
                                    : AppColors.beige,
                              ),
                            ),
                            Image.asset(AppImages.bestSeller2),
                            const Text(
                              'BEST SELLER',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            const Text(
                              'Nike Air Max',
                              style: TextStyle(
                                color: AppColors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              'Rp 752.000',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.black,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned.fill(
                      bottom: -190,
                      left: 140,
                      child: Image.asset(AppImages.plus),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New Arrivals'),
                Text(
                  'See All',
                  style: TextStyle(color: AppColors.primary, fontSize: 12),
                ),
              ],
            ),
            Image.asset(
              AppImages.newArrival,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: AppColors.primary,
        index: 2,
        items: const <Widget>[
          ImageIcon(
            AppIcons.home,
            size: 20,
            color: AppColors.primary,
          ),
          ImageIcon(AppIcons.favBottom, size: 20),
          ImageIcon(
            AppIcons.cartBottom,
            size: 24,
            color: AppColors.white,
          ),
          ImageIcon(AppIcons.notificationBottom, size: 20),
          ImageIcon(AppIcons.profileBottom, size: 20),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
