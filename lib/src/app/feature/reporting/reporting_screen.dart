import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/components/event_card.dart';
import '../../core/models/event_model.dart';
import 'create_report_screen.dart';

class ReportingScreen extends StatelessWidget {
  const ReportingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          SearchBar(
            backgroundColor: MaterialStatePropertyAll(
              Colors.grey.withOpacity(0.2),
            ),
            hintText: 'Search',
            leading: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            trailing: [
              const Icon(
                Icons.tune,
                color: Colors.grey,
              ).pOnly(right: 4)
            ],
          ).pSymmetric(v: 20, h: 16),
          CarouselSlider.builder(
            itemCount: reportList.length,
            itemBuilder: (context, index, realIndex) {
              return defaultEventCard(context, theme, reportList[index]);
            },
            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: .82,
                aspectRatio: .9,
                initialPage: 0,
                enableInfiniteScroll: false),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CreateReport();
          }));
        },
        label: const Row(
          children: [
            Icon(Icons.report),
            Text('Report'),
          ],
        ),
      ),
    );
  }
}
