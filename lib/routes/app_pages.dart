import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:zillow/presentation/search_listing/pages/search_listing_page.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.searchListings, page: () => SearchListingPage()),
  ];
}
