import 'package:flutter/material.dart';

class CuidapetTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final IconButton? suffixIcon;
  final ValueNotifier<bool> _obscureTextNn;

  CuidapetTextFormField({
    Key? key,
    required this.label,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
  })  : _obscureTextNn = ValueNotifier<bool>(obscureText),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureTextNn,
      builder: (_, obscureTextValue, child) {
        return TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureTextValue,
          decoration: InputDecoration(
            labelText: label,
            suffixIcon: obscureText
                ? IconButton(
                    onPressed: () {
                      _obscureTextNn.value = !obscureTextValue;
                    },
                    icon: Icon(
                      obscureTextValue ? Icons.lock : Icons.lock_open,
                    ),
                  )
                : null,
            labelStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              gapPadding: 5,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              gapPadding: 5,
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
        );
      },
    );
  }
}
