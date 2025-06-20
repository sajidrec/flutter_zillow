import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zillow/controller_binders.dart';
import 'package:zillow/routes/app_pages.dart';
import 'package:zillow/routes/app_routes.dart';

import 'utils/app_colors.dart';

class Zillow extends StatelessWidget {
  const Zillow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.searchListings,
      initialBinding: ControllerBinders(),
      title: "Zillow",
    );
  }
}
