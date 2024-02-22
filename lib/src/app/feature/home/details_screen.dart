import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/models/event_model.dart';

class DetailsScreen extends StatelessWidget {
  final Event event;

  const DetailsScreen({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(event.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                theme.scaffoldBackgroundColor.withOpacity(0.4),
                theme.scaffoldBackgroundColor,
                theme.scaffoldBackgroundColor,
                theme.scaffoldBackgroundColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: theme.scaffoldBackgroundColor.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                          ),
                        ).pSymmetric(v: 10, h: 15),
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: theme.scaffoldBackgroundColor.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.favorite_border,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                CupertinoIcons.square_arrow_up,
                              ),
                            ),
                          ],
                        ).pSymmetric(v: 10, h: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            event.tag,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 18),
                          ),
                          Text(
                            event.title,
                            style: const TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            'STARTING AT ${event.startingTime}',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: size.height * .09,
                        width: size.width * .195,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xff84dc94),
                                  Color(0xff58ff4e),
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'DEC',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            Text(
                              event.dateTime,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'About',
                          style: theme.textTheme.headlineSmall!.copyWith(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ).pSymmetric(v: 5, h: 15),
                      ).pOnly(right: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'PARTICIPANTS',
                          style: theme.textTheme.headlineSmall!.copyWith(
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ).pSymmetric(v: 5, h: 15),
                      ),
                    ],
                  ).py16(),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur elit adipiscing elit.'
                    ' Venenatis pulvinar a amet in, suspendisse vitae, posuere'
                    ' eu tortor et. Und commodo, '
                    'fermentum, mauris leo eget.',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    'LOCATION',
                    style: TextStyle(fontSize: 23),
                  ).py16(),
                  Container(
                    height: size.height * .2,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/maps.png'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: BlurryContainer(
                  height: size.height * 0.15,
                  width: size.width,
                  blur: 8,
                  padding: const EdgeInsets.all(40),
                  color: theme.scaffoldBackgroundColor.withOpacity(0.4),
                  // borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  child: SizedBox(
                    height: size.height * .07,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xff84dc94),
                                  Color(0xff58ff4e),
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          'Collabrate',
                          style: TextStyle(
                              fontSize: 20,
                              wordSpacing: 100,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
