import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/trees.jpg'),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: theme.scaffoldBackgroundColor.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                        ).pSymmetric(v: 10, h: 15),
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: theme.scaffoldBackgroundColor.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.favorite_border,
                            ),
                            Icon(
                              CupertinoIcons.square_arrow_up,
                            ),
                          ],
                        ).pSymmetric(v: 10, h: 10),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Collaboration',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 18),
                          ),
                          const Text(
                            'Green Area',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            'STARTING AT 9:10 AM',
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
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'DEC',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            Text(
                              '21',
                              style: TextStyle(
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
                  const Spacer(),
                ],
              ),
              Positioned(
                child: Container(
                  height: size.height * 0.2,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: theme.scaffoldBackgroundColor.withOpacity(0.5),
                  ),
                  child: Container(
                    width: size.width * .2,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color(0xff84dc94),
                          Color(0xff58ff4e),
                        ],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft)),
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
