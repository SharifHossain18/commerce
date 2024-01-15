import 'package:flutter/material.dart';


class CustomLoginField extends StatelessWidget {
  final String hinttext;
  final Icon? icon;
  const CustomLoginField({super.key,
  required this.hinttext,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hinttext,
          suffixIcon: icon,
          hintStyle: TextStyle(
              color: Colors.black
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10)
            )
          )
      ),
    );
  }
}
