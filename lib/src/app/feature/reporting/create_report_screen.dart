import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/components/dropdown_field.dart';

class CreateReport extends StatelessWidget {
  CreateReport({super.key});

  List<String> tag = ['Choose tag', 'Collaboration', 'Environmental Issue','Emergency'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
      ),
      body: SizedBox.expand(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: size.height * .2,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(Icons.camera_alt_outlined,
                  size: 50, color: Colors.grey),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Write a title',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ).py24(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * .5,
                  child: dropdownFormField(context,
                      items: tag,
                      hinText: 'Choose Tag',
                      onChanged: (String? value) {}),
                ),
                SizedBox(
                  width: size.width * .37,
                  child: TextFormField(
                    onTap: (){
                      showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2040));
                    },
                    decoration: InputDecoration(
                        hintText: 'Choose Datetime',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                )
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                alignLabelWithHint: true,
                hintText: 'Write a Description for the problem',
                labelText: 'Problem Description',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
              maxLines: 6,
            ).py24(),
            Container(
              height: size.height * .2,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/images/maps.png'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Choose Location',
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                // width: size.width * .4,
                height: size.height * .06,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xff84dc94),
                      Color(0xff58ff4e),
                    ], begin: Alignment.centerRight, end: Alignment.centerLeft),
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  'Report',
                  style: TextStyle(fontSize: 30),
                ),
              ).py24(),
            ),
          ],
        ).px16(),
      ),
    );
  }
}
