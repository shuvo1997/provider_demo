import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  void Function(String?)? onSaved;
  MyTextField({Key? key, required this.label, this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextFormField(
        onSaved: onSaved,
        decoration: InputDecoration(
            labelText: label,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
