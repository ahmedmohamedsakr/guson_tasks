import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.backgroundColor,
    this.hintText,
  });

  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? backgroundColor;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.0,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
          ),
          suffixIcon: Icon(
            suffixIcon,
          ),
          filled: true,
          fillColor: backgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 10.0,
          ),
          hintText: hintText ?? '',
        ),
      ),
    );
  }
}
