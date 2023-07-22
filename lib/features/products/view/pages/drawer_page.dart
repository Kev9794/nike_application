import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/auth/view/pages/login_page.dart';
import 'package:nike_application/features/products/view/pages/cart_page.dart';
import 'package:nike_application/features/profile/view/pages/profile_page.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(35, 90, 0, 78),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImages.drawerPerson),
                const SizedBox(
                  height: 58,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const ProfilePage();
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
                    child: Image.asset(AppImages.profileDrawer)),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
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
                    child: Image.asset(AppImages.cartDrawer)),
                const SizedBox(
                  height: 32,
                ),
                Image.asset(AppImages.favDrawer),
                const SizedBox(
                  height: 32,
                ),
                Image.asset(AppImages.orderDrawer),
                const SizedBox(
                  height: 32,
                ),
                Image.asset(AppImages.notificationDrawer),
                const SizedBox(
                  height: 32,
                ),
                Image.asset(AppImages.settingDrawer),
                const SizedBox(
                  height: 32,
                ),
                const Divider(
                  color: AppColors.white,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginPage(),
                      ),
                    );
                  },
                  child: Image.asset(AppImages.signOutDrawer),
                ),
              ],
            ),
            Positioned.fill(
              left: 200,
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(AppImages.explorePage)),
            ),
          ],
        ),
      ),
    );
  }
}
