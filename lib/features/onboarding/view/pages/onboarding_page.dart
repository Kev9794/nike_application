import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/auth/view/pages/login_page.dart';
import 'package:nike_application/features/onboarding/model/content_model.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  PageController _controller = PageController(initialPage: 0);

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.secondary,
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Stack(
                    children: [
                      Padding(
                        padding: i == 0
                            ? const EdgeInsets.fromLTRB(0, 90, 0, 0)
                            : const EdgeInsets.fromLTRB(40, 90, 40, 40),
                        child: Column(
                          children: [
                            SizedBox(
                              height: i == 0 ? 40 : 0,
                            ),
                            Text(
                              contents[i].mainTitle ?? '',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: AppColors.white,
                              ),
                            ),
                            Container(
                              height: i == 0 ? 400 : 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(contents[i].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: i == 1 || i == 2,
                              child: const SizedBox(
                                height: 50,
                              ),
                            ),
                            Text(
                              contents[i].title ?? '',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              contents[i].description ?? '',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18,
                                color: AppColors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned.fill(
                        bottom: -350,
                        child: Container(
                          width: 482,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImages.nikeShadow),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: i == 0,
                        child: Positioned.fill(
                          bottom: -220,
                          child: Container(
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.decor1),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: i == 0,
                        child: Positioned.fill(
                          bottom: 300,
                          child: Container(
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.decor3),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: i == 0,
                        child: Positioned.fill(
                          bottom: 500,
                          left: -230,
                          child: Container(
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.decor2),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: i == 1 || i == 2,
                        child: Positioned.fill(
                          bottom: -75,
                          left: -50,
                          child: Container(
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.shoesShadow),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: i == 1,
                        child: Positioned.fill(
                          bottom: 350,
                          left: -250,
                          child: Container(
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.decor5),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: i == 1,
                        child: Positioned.fill(
                          bottom: 480,
                          left: 300,
                          child: Container(
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.decor4),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: i == 2,
                        child: Positioned.fill(
                          bottom: 150,
                          left: 0,
                          child: Container(
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.circleJordan),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: i == 2,
                        child: Positioned.fill(
                          bottom: 450,
                          left: -200,
                          child: Container(
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.decor6),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(40),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(13)),
              ),
              child: TextButton(
                child: Text(
                  currentIndex == 0 ? "Get Started" : "Next",
                  style: const TextStyle(
                    color: AppColors.black,
                    fontWeight: AppFontWeight.semibold,
                  ),
                ),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginPage(),
                      ),
                    );
                  }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 42 : 28,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? AppColors.white : AppColors.orange,
      ),
    );
  }
}
