import 'package:get/get.dart';

class FavouriteItemController extends GetxController {
  final Map<int, bool> _favouriteItems = {};

  bool getIsFavourite({required int itemId}) {
    return _favouriteItems[itemId] ?? false;
  }

  void setIsFavouriteStatus({required int itemId, required bool status}) {
    _favouriteItems[itemId] = status;
    update();
  }
}
