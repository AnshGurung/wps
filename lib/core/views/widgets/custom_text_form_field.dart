import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  TextInputType keyboardType;
  String hintText;
  String? Function(String?)? validator;
  CustomTextFormField({
    required this.keyboardType,
    required this.hintText,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        keyboardType: keyboardType,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          hintText: hintText,
        ),
        textInputAction: TextInputAction.go,
        validator: validator,
        inputFormatters: [LengthLimitingTextInputFormatter(10)],
      ),
    );
  }
}
