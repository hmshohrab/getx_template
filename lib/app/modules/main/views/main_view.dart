import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/base/base_view.dart';
import '/app/modules/home/views/home_view.dart';
import '/app/modules/main/controllers/main_controller.dart';
import '/app/modules/main/model/menu_code.dart';
import '/app/modules/other/views/other_view.dart';
import '/app/modules/settings/views/settings_view.dart';

// ignore: must_be_immutable
class MainView extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      key: UniqueKey(),
      // child: Obx(() => loginView),
      child: Obx(() => getPageOnSelectedMenu(controller.selectedMenuCode)),
    );
  }

/*

  @override
  Widget? bottomNavigationBar() {

    return BottomNavBar(onNewMenuSelected: controller.onMenuSelected);
  }
*/

  HomeView? homeView;
  SettingsView? settingsView;

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.HOME:
        homeView ??= HomeView();
        return homeView!;
      case MenuCode.SETTINGS:
        settingsView ??= SettingsView();
        return settingsView!;
      default:
        return OtherView(
          viewParam: describeEnum(menuCode),
        );
    }
  }
}
