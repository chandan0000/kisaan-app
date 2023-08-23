import 'package:flutter/material.dart';
import 'package:asignment/presentation/rent_display_container_screen/rent_display_container_screen.dart';
import 'package:asignment/presentation/rental_profile_screen/rental_profile_screen.dart';
import 'package:asignment/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String rentDisplayPage = '/rent_display_page';

  static const String rentDisplayTabContainerPage =
      '/rent_display_tab_container_page';

  static const String rentDisplayContainerScreen =
      '/rent_display_container_screen';

  static const String rentalProfileScreen = '/rental_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    rentDisplayContainerScreen: (context) => RentDisplayContainerScreen(),
    rentalProfileScreen: (context) => RentalProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
