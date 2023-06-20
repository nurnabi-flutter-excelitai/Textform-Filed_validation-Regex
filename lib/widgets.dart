
import 'package:flutter/material.dart';

class ReusableTextFormFieldWidget extends StatelessWidget {


  ReusableTextFormFieldWidget({
    super.key,
    required this.controller,
    required this.validator,
    this.textInputAction,
    required this.keyboardType,
    this.onChanged,
    this.hintText,
    this.prefixPhoneNumber
  });

  final TextEditingController controller;
  String? Function(String?)? validator;
  TextInputAction? textInputAction;
  TextInputType? keyboardType;
  void Function(String)? onChanged;
  String? hintText;
  Widget?prefixPhoneNumber;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        prefixIcon: prefixPhoneNumber,
        contentPadding:
        EdgeInsets.only(left: 12, right: 12, top: 14, bottom: 14),
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.black54,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}