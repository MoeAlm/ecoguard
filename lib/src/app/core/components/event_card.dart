import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../feature/home/details_screen.dart';
import '../models/event_model.dart';

Widget eventCard(Size size, {required Event model, required context}) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DetailsScreen(event: model);
      }));
    },
    child: Container(
      width: size.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
            image: AssetImage(model.image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(colors: [
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.black.withOpacity(0.4)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              height: size.height * .09,
              width: size.width * .195,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'DEC',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  Text(
                    model.dateTime,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.tag,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6), fontSize: 18),
                  ),
                  Text(
                    model.title,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            )
          ],
        ).pSymmetric(v: 16, h: 20),
      ),
    ).px8(),
  );
}

Widget defaultEventCard(
    BuildContext context, ThemeData themeData, Event events) {
  return InkWell(
    onTap: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return  EventsDetails(model: events);
      //     },
      //     fullscreenDialog: true,
      //   ),
      // );
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: AssetImage('assets/images/maps.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 8),
            Text(
              events.title,
              style: themeData.textTheme.headlineMedium!
                  .copyWith(color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: themeData.primaryColor),
                  child:  const Icon(
                    Icons.report,
                    color: Colors.white,
                  ).p(5),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(events.tag, style: themeData.textTheme.bodyMedium!),
                    Text(
                      '${events.dateTime}, DEC',
                      style: themeData.textTheme.bodyMedium!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ).px12(),
              ],
            ).py(16),
          ],
        ).pSymmetric(v: 14, h: 12),
      ),
    ),
  );
}