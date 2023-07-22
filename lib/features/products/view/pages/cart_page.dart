import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/products/view/pages/checkout_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
        title: const Text('My Cart'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '3 Item',
              style: TextStyle(fontFamily: 'Poppins'),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 58,
                  height: 104,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        AppIcons.add,
                        color: AppColors.white,
                      ),
                      Text(
                        '1',
                        style: TextStyle(color: AppColors.white),
                      ),
                      ImageIcon(
                        AppIcons.minus,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 108,
                  height: 104,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(9, 9, 63, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppImages.cartProduct1),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Nike Club Max'),
                            Text(
                              'Rp 584.950',
                              style: TextStyle(fontFamily: 'Poppins'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Container(
                  height: 104,
                  width: MediaQuery.of(context).size.width - 108,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(9, 9, 43, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppImages.cartProduct2),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Nike Air Max 200'),
                            Text(
                              'Rp 940.500',
                              style: TextStyle(fontFamily: 'Poppins'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 58,
                  height: 104,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: ImageIcon(
                      AppIcons.trash,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              height: 104,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(9, 9, 43, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImages.cartProduct3),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nike Air Max 270 Essential'),
                        Text(
                          'Rp 740.950',
                          style: TextStyle(fontFamily: 'Poppins'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.white,
        height: 258,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: TextStyle(color: AppColors.lightGrey),
                  ),
                  Text(
                    'Rp 1.753.950',
                    style: TextStyle(fontFamily: 'Poppins'),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery',
                    style: TextStyle(color: AppColors.lightGrey),
                  ),
                  Text(
                    'Rp 60.200',
                    style: TextStyle(fontFamily: 'Poppins'),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18, bottom: 18),
                child: DottedLine(
                  lineThickness: 2,
                  dashColor: AppColors.lightGrey,
                  dashRadius: 2,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Cost'),
                  Text(
                    'Rp 1.814.150',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: AppColors.primary,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              NikeFormButton(
                label: 'Checkout',
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const CheckoutPage();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
