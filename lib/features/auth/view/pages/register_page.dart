import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/auth/view/pages/login_page.dart';
import 'package:nike_application/features/auth/view/pages/verification_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              'Register Account',
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
            const NikeFormInput(hint: 'xxxxxxxx', label: 'Your Name'),
            const SizedBox(
              height: 12,
            ),
            const NikeFormInput(
                hint: 'loremipsum@gmail.com', label: 'Email Address'),
            const SizedBox(
              height: 30,
            ),
            const NikeFormInputPassword(hint: '. . . . . .', label: 'Password'),
            const SizedBox(
              height: 40,
            ),
            NikeFormButton(
                label: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const VerificationPage(),
                    ),
                  );
                }),
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
                      Image.asset('assets/icons/google.png'),
                      const SizedBox(
                        width: 14,
                      ),
                      const Text(
                        'Sign Up With Google',
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
                    'Already Have Account? ',
                    style: TextStyle(color: AppColors.lightGrey),
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
                    child: const Text(
                      'Log In',
                      style: TextStyle(color: AppColors.black),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
