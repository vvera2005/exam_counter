import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StringWithBox extends StatelessWidget {
  StringWithBox(
      {super.key, required this.text, this.controller, this.onChanged});
  final String text;
  final TextEditingController? controller;
  final GlobalKey<FormFieldState> _globalKey = GlobalKey<FormFieldState>();
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$text = ",
          style: TextStyle(color: Colors.grey.shade800),
        ),
        Flexible(
          child: TextField(
            key: _globalKey,
            controller: controller,
            onChanged: onChanged,
          ),
        )
      ],
    );
  }
}
