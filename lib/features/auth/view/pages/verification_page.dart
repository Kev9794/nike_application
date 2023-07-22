import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:nike_application/core.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
              'OTP Verification',
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
                'Please Check Your Email Too See The\nVerification Code',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: AppFontWeight.regular,
                    color: AppColors.black),
                textAlign: TextAlign.center,
              ),
            ),
            const Text(
              'OTP Code',
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: AppFontWeight.bold,
                  color: AppColors.black),
              textAlign: TextAlign.start,
            ),
            OtpTextField(
              numberOfFields: 4,
              margin: const EdgeInsets.fromLTRB(0, 16, 18, 40),
              fieldWidth: 70,
              borderWidth: 0,
              borderColor: Colors.transparent,
              fillColor: AppColors.light,
              filled: true,
              showFieldAsBox: true,
            ),
            NikeFormButton(label: 'Verify', onPressed: () {}),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Resend code to',
                      style: TextStyle(color: AppColors.lightGrey),
                    ),
                    Text(
                      '00:30',
                      style: TextStyle(color: AppColors.lightGrey),
                    ),
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
