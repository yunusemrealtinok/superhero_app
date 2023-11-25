//component (item)
//reuseable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1.5.w),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        controller: textEditingController,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.blue,
          ),
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
