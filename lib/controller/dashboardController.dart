import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  // Index to keep track of the selected tab
  var selectedIndex = 0.obs;
  late TabController _tabController;

  @override
  void onInit() {
    // TODO: implement onInit
    _tabController = TabController(length: 4, vsync: ScrollableState());
    super.onInit();
  }

  // Function to handle tab changes
  void onTabTapped(int index) {
    selectedIndex.value = index;
    update();
  }
}
