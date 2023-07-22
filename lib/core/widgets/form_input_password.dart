part of 'package:nike_application/core.dart';

class NikeFormInputPassword extends StatefulWidget {
  final String hint;
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? icon;
  final void Function(String value)? onChanged;
  final FloatingLabelBehavior? floatingLabelBehavior;

  const NikeFormInputPassword({
    super.key,
    required this.hint,
    required this.label,
    this.controller,
    this.keyboardType,
    this.validator,
    this.icon,
    this.onChanged,
    this.floatingLabelBehavior = FloatingLabelBehavior.always,
  });

  @override
  State<NikeFormInputPassword> createState() => _NikeFormInputPasswordState();
}

class _NikeFormInputPasswordState extends State<NikeFormInputPassword> {
  bool passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontWeight: AppFontWeight.medium,
            fontSize: AppSizes.primary,
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: passwordVisibility,
          validator: widget.validator,
          onChanged: widget.onChanged,
          style: const TextStyle(
            color: AppColors.black,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSizes.secondary, vertical: AppSizes.primary),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.radiusForm),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.radiusForm),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.radiusForm),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.radiusForm),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.radiusForm),
              borderSide: const BorderSide(color: AppColors.beige),
            ),
            labelStyle: const TextStyle(
              color: AppColors.lightGrey,
            ),
            fillColor: AppColors.light,
            filled: true,
            floatingLabelBehavior: widget.floatingLabelBehavior,
            hintText: widget.hint,
            hintStyle: TextStyle(
                color: AppColors.grey.withOpacity(0.6),
                fontWeight: AppFontWeight.medium,
                fontSize: AppSizes.radiusForm,
                fontFamily: 'Poppins'),
            prefixIcon: widget.icon == null
                ? null
                : Transform.scale(
                    scale: 0.5,
                    child: widget.icon,
                  ),
            suffixIcon: IconButton(
              icon: Icon(
                  passwordVisibility ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(
                  () {
                    passwordVisibility = !passwordVisibility;
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
