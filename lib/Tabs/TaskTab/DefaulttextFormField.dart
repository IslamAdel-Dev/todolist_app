import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
String hinttext;
TextEditingController textEditingController ;
String? Function(String?)? validator;

DefaultTextFormField({required this.textEditingController , required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText:hinttext),
      controller: textEditingController,
      validator: validator,
    );
  }
}
