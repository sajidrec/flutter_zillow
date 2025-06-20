import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FabShowHideController extends GetxController {
  bool _showFab = true;
  final scrollController = ScrollController();
  Timer? _debounce;

  bool get getShowFabStatus => _showFab;

  @override
  void onInit() {
    scrollController.addListener(_scrollListener);
    super.onInit();
  }

  void _scrollListener() {
    // Hide immediately on scroll
    if (_showFab) {
      _showFab = false;
      update();
    }

    // Debounce to detect scroll stop
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 200), () {
      if (!_showFab) {
        _showFab = true;
        update();
      }
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    _debounce?.cancel();
    super.onClose();
  }
}
