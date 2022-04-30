import 'package:flutter/material.dart';

class CuidapetTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  const CuidapetTextFormField({
    Key? key,
    required this.label,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        labelStyle:const TextStyle(fontSize: 15,color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15)
         
        )
      ),
      
    );
  }
}
