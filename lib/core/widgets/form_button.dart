part of 'package:nike_application/core.dart';

class NikeFormButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final BoxBorder? border;
  final double? width;
  final double? height;

  const NikeFormButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.border,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50.0,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: border,
        borderRadius: BorderRadius.circular(AppSizes.radiusForm),
        color: onPressed == null
            ? backgroundColor?.withOpacity(0.5) ?? AppColors.primary
            : backgroundColor ?? AppColors.primary,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: textColor ?? AppColors.white,
              fontWeight: AppFontWeight.semibold,
              fontSize: AppSizes.radiusForm,
            ),
          ),
        ),
      ),
    );
  }
}
