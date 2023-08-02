import 'package:flutter/material.dart';

import '/app/core/base/base_view.dart';
import '/app/modules/home/controllers/home_controller.dart';
import '../../../../data/count_item.dart';
import '../../../../utils/dimensions.dart';
import '../../../../utils/extensions.dart';

class HomeView extends BaseView<HomeController> {
  final List<CountItem> countItemList = [];

  HomeView();

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return getAppBar(context, "GetX Template",
        onBackPressed: null, enableBackButton: false);
  }

  @override
  Widget? drawer() {
    return null;
  }

  @override
  Widget? floatingActionButton() {
    return const FloatingActionButton.extended(
      onPressed: null,
      tooltip: 'Add',
      label: Text("Add"),
      icon: Icon(Icons.add),
    );
  }

  @override
  Widget body(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: Dimensions.paddingSizeSmall),
      ],
    );
  }
}
