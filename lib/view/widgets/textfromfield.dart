import 'package:flutter/material.dart';
import 'package:sawara_solutions_pvt_ltd/constants/colors/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {super.key,
      required this.obscureText,
      this.controller,
      this.decoration,
      this.hintText,
      // this.iconData,
      this.validator,
      this.suffixicon,
      this.autoFocus,
      this.onchange});

  final bool obscureText;
  final TextEditingController? controller;
  final String? hintText;
  // final IconData? iconData;
  final InputDecoration? decoration;
  final String? Function(String?)? validator;
  final String? Function(String?)? onchange;
  final Widget? suffixicon;
  final bool? autoFocus;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(15),
        child: TextFormField(
          // autofocus: autoFocus,
          obscureText: obscureText,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            suffixIcon: suffixicon,
            // fillColor: Colors.grey[200],
            fillColor: AppColors.whiteColor,
            filled: true,
            // prefixIcon: Icon(iconData),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.blackColor),
            ),
            hintText: hintText,
          ),
          onChanged: onchange,
          //hintText: hintText,
          // iconData: iconData,
        ),
      ),
    );
  }
}
