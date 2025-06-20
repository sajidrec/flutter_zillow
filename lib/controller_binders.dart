import 'package:get/get.dart';
import 'package:zillow/presentation/search_listing/controllers/fab_show_hide_controller.dart';

import 'presentation/search_listing/controllers/favourite_item_controller.dart';

class ControllerBinders extends Bindings {
  @override
  void dependencies() {
    Get.put(FabShowHideController());
    Get.put(FavouriteItemController());
  }
}
