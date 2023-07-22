import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/auth/view/pages/forgot_password_page.dart';
import 'package:nike_application/features/profile/view/pages/edit_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(
          children: [
            Image.asset(AppImages.personEdit),
            SizedBox(
              height: 24,
            ),
            NikeFormInput(hint: 'Lorem Ipsum', label: 'Your Name'),
            SizedBox(
              height: 12,
            ),
            NikeFormInput(hint: 'loremipsum@gmail.com', label: 'Email Address'),
            SizedBox(
              height: 30,
            ),
            NikeFormInputPassword(hint: '........', label: 'Password'),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ForgotPasswordPage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(
                  top: 12,
                  bottom: 24,
                ),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Recovery Password',
                  style: TextStyle(color: AppColors.lightGrey),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            NikeFormButton(
              label: 'Save Now',
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const EditProfilePage();
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
    );
  }
}
