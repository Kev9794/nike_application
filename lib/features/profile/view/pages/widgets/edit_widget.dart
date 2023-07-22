import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';

class EditWidget extends StatelessWidget {
  const EditWidget(
      {super.key, required this.title, required this.value, this.imageLeading});
  final String title;
  final String value;
  final String? imageLeading;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Container(
          padding: const EdgeInsets.only(top: 17, bottom: 16),
          child: Container(
            height: 48,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.light,
            ),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  imageLeading == null
                      ? const SizedBox.shrink()
                      : Image.asset(imageLeading!),
                  Text(value),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ImageIcon(
                        AppIcons.check,
                        color: AppColors.primary,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
