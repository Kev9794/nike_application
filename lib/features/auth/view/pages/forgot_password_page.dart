import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
              'Forgot Password',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: AppFontWeight.bold,
                  color: AppColors.black),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 8,
                bottom: 40,
              ),
              child: Text(
                'Enter Your Email Account To Reset\nYour Password',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: AppFontWeight.regular,
                    color: AppColors.black),
                textAlign: TextAlign.center,
              ),
            ),
            const NikeFormInput(hint: 'xxxxxxxx', label: ''),
            const SizedBox(
              height: 40,
            ),
            NikeFormButton(
              label: 'Reset Password',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      content: Container(
                        height: 196,
                        width: 335,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 24),
                              child: Container(
                                width: 44,
                                height: 44,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AppImages.mail),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              "Check Your Email",
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'We Have Send Password Recovery\nCode In Your Email',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: AppColors.lightGrey),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
