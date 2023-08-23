import 'package:asignment/core/app_export.dart';
import 'package:asignment/presentation/rent_display_tab_container_page/rent_display_tab_container_page.dart';
import 'package:asignment/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RentDisplayContainerScreen extends StatelessWidget {
  RentDisplayContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.rentDisplayTabContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Mystation:
        return "/";
      case BottomBarEnum.Krishibazaar:
        return AppRoutes.rentDisplayTabContainerPage;
      case BottomBarEnum.Myfarm:
        return "/";
      case BottomBarEnum.Krishigyan:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.rentDisplayTabContainerPage:
        return RentDisplayTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
