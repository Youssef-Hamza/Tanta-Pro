import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customTextInput extends StatelessWidget {
  const customTextInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.width_of_Tf,
    required this.Value_of_radius,
    required this.height_of_Tf,
    required this.noLines,
    this.ed,
  });
  final TextEditingController controller;
  final String hintText;
  final double width_of_Tf;
  final double height_of_Tf;
  final int noLines;
  final double Value_of_radius;
  final ed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Value_of_radius),
            border: Border.all(
              color: Color.fromARGB(255, 240, 238, 238),
            )),
        width: width_of_Tf,
        height: height_of_Tf.h,
        child: TextFormField(
          enabled: ed,
          controller: controller,
          maxLines: noLines,
          textAlign: TextAlign.end,
          decoration: InputDecoration(
              hintText: hintText,
              alignLabelWithHint: true,
              hintStyle: TextStyle(
                fontSize: 20,
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
