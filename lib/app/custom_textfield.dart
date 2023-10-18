//component (item)
//reuseable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.textEditingController,
      this.focusNode,
      this.hintText,
      required this.onSubmitted});
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final String? hintText;
  final Function(String) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade50,
      child: TextField(
        controller: textEditingController,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
