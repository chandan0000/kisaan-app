import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:asignment/theme/theme_helper.dart';
import 'package:asignment/routes/app_routes.dart';

import 'presentation/rent_display_page/rent_display_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'asignment',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.rentalProfileScreen,
      routes: AppRoutes.routes,
    );
  }
}
