import 'package:nike_application/core.dart';

class UnbordingContent {
  String? mainTitle;
  String image;
  String? title;
  String? description;

  UnbordingContent({
    required this.image,
    this.title,
    this.description,
    this.mainTitle,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
    mainTitle: 'WELCOME TO\nNIKE',
    image: AppImages.nikeShoes1,
  ),
  UnbordingContent(
      title: " Let's Start Journey\nWith Nike",
      image: AppImages.nikeShoes2,
      description: "Smart, Gorgeous & Fashionable\nCollection Explore Now"),
  UnbordingContent(
      title: 'Reward surprises',
      image: AppImages.nikeShoes3,
      description:
          "There Are Many Beautiful And Attractive\nPlants To Your Room"),
];
