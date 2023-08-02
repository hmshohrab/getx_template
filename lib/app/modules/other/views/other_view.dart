import 'package:flutter/material.dart';

import '/app/core/base/base_view.dart';
import '../../../my_app.dart';
import '../controllers/other_controller.dart';

class OtherView extends BaseView<OtherController> {
  final String viewParam;

  OtherView({this.viewParam = ""});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: MyApp(),
    );
  }
}
