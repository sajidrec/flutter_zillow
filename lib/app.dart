import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zillow/routes/app_pages.dart';
import 'package:zillow/routes/app_routes.dart';

class Zillow extends StatelessWidget {
  const Zillow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.searchListings,
      title: "Zillow",
    );
  }
}
