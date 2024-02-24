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
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(15),
            prefixIcon: prefixIcon,
            hintText: hinText,
            filled: true,
            hintStyle: const TextStyle(color: Palette.black700),
            border: OutlineInputBorder(
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
          onChanged: onChanged)
      .py12();
}

Widget dropdownFormFieldEnhanced(BuildContext context,
    {required List<String> items,
    String? value,
    required void Function(String?)? onChanged,
    String? hinText,
    Widget? prefixIcon}) {
  TextScaler textScale = MediaQuery.textScalerOf(context);
  return DropdownButtonFormField(
          borderRadius: BorderRadius.circular(30),
          decoration: InputDecoration(
            hintText: hinText,
            hintStyle: const TextStyle(color: Colors.white, fontFamily: 'Product'),
            prefixIcon: prefixIcon,
            prefixIconColor: Colors.white,
            filled: true,
            fillColor: Colors.grey.shade500,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
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
          onChanged: onChanged)
      .pOnly(top: 20);
}
