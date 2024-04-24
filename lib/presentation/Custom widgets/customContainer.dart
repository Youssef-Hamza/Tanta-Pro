import 'package:flutter/material.dart';

class custom_container extends StatelessWidget {
  const custom_container({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 240, 238, 238)),
            borderRadius: BorderRadius.circular(7)),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          )
        ]),
      ),
    );
  }
}
