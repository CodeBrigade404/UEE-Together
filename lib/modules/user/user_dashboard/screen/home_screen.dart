// ignore_for_file: use_build_context_synchronously

import 'package:event_booking_app/modules/user/user_flowing/artists_display_screen.dart';
import 'package:event_booking_app/modules/user/user_category/user_event_category_screen.dart';
import 'package:event_booking_app/modules/user/user_event_location/events_locations_display_screen.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final pageController = PageController(initialPage: 0);

  // tabBar icons
  final tabBarIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.list,
    FontAwesomeIcons.userGroup,
    FontAwesomeIcons.compass,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: const [
                // EventDisplayScreen(),
                CategoryDisplayScreen(),
                FollowingPage(),
                EventLocationsScreen(),
              ],
            ),

            // bottom bar
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                  color: appBackgroundColor,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...tabBarIcons.asMap().entries.map(
                      (entry) {
                        final index = entry.key;
                        final icon = entry.value;
                        return IconButton(
                          onPressed: () {
                            setState(() {
                              currentIndex = index;
                            });
                            pageController.jumpToPage(index);
                          },
                          icon: Icon(
                            icon,
                            color: currentIndex == index
                                ? Colors.white
                                : Colors.white60,
                            size: 22,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
