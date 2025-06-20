import 'package:get/get.dart';
import 'package:zillow/presentation/search_listing/controllers/fab_show_hide_controller.dart';

class ControllerBinders extends Bindings {
  @override
  void dependencies() {
    Get.put(FabShowHideController());
  }
}
