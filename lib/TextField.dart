import 'package:flutter/material.dart';

class CostumeTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const CostumeTextField({Key? key,required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextFormField(
        onChanged: (value) => onChanged(value),
      ),
    );
  }
}
