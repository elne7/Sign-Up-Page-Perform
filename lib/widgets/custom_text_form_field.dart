import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.obscureText = false,
      required this.validator});

  final String hintText;
  final Function(String)? onChanged;
  final FormFieldValidator<String> validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        label: Text(
          hintText,
          style: TextStyle(color: Colors.blue.withOpacity(0.8)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
