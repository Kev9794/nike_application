import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/auth/view/pages/forgot_password_page.dart';
import 'package:nike_application/features/auth/view/pages/register_page.dart';
import 'package:nike_application/features/products/view/pages/explore_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(AppImages.back),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 47),
        child: Column(
          children: [
            const Text(
              'Hello Again!',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: AppFontWeight.bold,
                  color: AppColors.black),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 8,
                bottom: 30,
              ),
              child: Text(
                'Fill Your Details Or Continue with\nSocial Media',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: AppFontWeight.regular,
                    color: AppColors.black),
                textAlign: TextAlign.center,
              ),
            ),
            const NikeFormInput(
                hint: 'loremipsum@gmail.com', label: 'Email Address'),
            const SizedBox(
              height: 30,
            ),
            const NikeFormInputPassword(hint: '. . . . . .', label: 'Password'),
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
              label: 'Sign In',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ExplorePage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.radiusForm),
                color: AppColors.white,
              ),
              child: TextButton(
                onPressed: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.google),
                      const SizedBox(
                        width: 14,
                      ),
                      const Text(
                        'Sign In With Google',
                        style: TextStyle(
                          color: AppColors.black,
                          fontWeight: AppFontWeight.semibold,
                          fontSize: AppSizes.radiusForm,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New User? ',
                      style: TextStyle(color: AppColors.lightGrey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Create Account',
                        style: TextStyle(color: AppColors.black),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
