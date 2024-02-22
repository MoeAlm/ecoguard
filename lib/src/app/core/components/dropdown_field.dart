import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../theme/palette.dart';

Widget dropdownFormField(BuildContext context,
    {required List<String> items,
    String? value,
    required void Function(String?)? onChanged,
     String? hinText,
    Widget? prefixIcon}) {
  TextScaler textScale = MediaQuery.textScalerOf(context);
  return DropdownButtonFormField(
    borderRadius: BorderRadius.circular(30),
      // style: const TextStyle(color: Palette.black700, fontFamily: 'Product', ),
      // iconEnabledColor: Colors.grey,
      // dropdownColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        prefixIcon: prefixIcon,
        hintText: hinText,
        // labelText: hinText,
        // fillColor: Colors.grey.shade200,
        filled: true,
        hintStyle: const TextStyle(color: Palette.black700),
        border: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      value: items[0],
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          enabled: value == items[0] ? false : true,
          child: Text(
            value,
            style: TextStyle(
              fontSize: textScale.scale(15),
            ),
          ),
        );
      }).toList(),
      onChanged: onChanged).py12();
}
