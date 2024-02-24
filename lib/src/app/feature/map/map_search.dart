import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';




class MapSearch extends StatelessWidget {

  const MapSearch({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: size.height * 0.056,
          width: size.width * 0.8,
          child: SearchBar(
            leading: const Icon(Icons.search_rounded).p8(),
            elevation: const MaterialStatePropertyAll(0.0),
            backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
            hintText: 'ابحث بإسم المنطقة او الشارع',
          ),
        ),
      ),
    );
  }
}
