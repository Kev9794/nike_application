import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Contact Information'),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Image.asset(AppImages.contact),
                    const SizedBox(
                      width: 12,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'loremipsum@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.lightGrey,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    const ImageIcon(AppIcons.edit),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Image.asset(AppImages.phone),
                    const SizedBox(
                      width: 12,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '+62821-39-488-953',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          'Phone',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.lightGrey,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    const ImageIcon(AppIcons.edit),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Address'),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rungkut, Kota Surabaya, Jawa Timur',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.lightGrey,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    ImageIcon(AppIcons.expand),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset(AppImages.map),
                const SizedBox(
                  height: 12,
                ),
                const Text('Payment Method'),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset(AppImages.mandiri),
                    const SizedBox(
                      width: 12,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          '**** **** 0696 4629',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.lightGrey,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    const ImageIcon(AppIcons.expand),
                  ],
                ),
              ],
            ),
          ),
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
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        content: Container(
                          height: 375,
                          width: 327,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, bottom: 40),
                                child: Container(
                                  width: 134,
                                  height: 134,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            AppImages.paymentSuccess),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Your Payment is\nSuccessful',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              NikeFormButton(
                                label: 'Back to Shopping',
                                width: 199,
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    },
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
