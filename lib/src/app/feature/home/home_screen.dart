
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/components/event_card.dart';
import '../../core/models/event_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: size.height * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore',
                style: theme.textTheme.headlineMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 35),
              ),
              const CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              )
            ],
          ),
          SearchBar(
            backgroundColor:
                MaterialStatePropertyAll(Colors.grey.withOpacity(0.2)),
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
          ).py16(),
          Text(
            'Latest',
            style: theme.textTheme.titleLarge,
          ).py8(),
          SizedBox(
            height: size.height * 0.33,
            width: size.width,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: eventList.length,
                itemBuilder: (context, index) {
                  return eventCard(size,
                      model: eventList[index], context: context);
                }),
          ),
          Text(
            'FOR YOU',
            style: theme.textTheme.titleLarge,
          ).py8(),
          SizedBox(
            height: size.height * 0.33,
            width: size.width,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: forYouList.length,
                itemBuilder: (context, index) {
                  return eventCard(size,
                      model: forYouList[index], context: context);
                }),
          ),
        ],
      ).px16(),
    );
  }

}
