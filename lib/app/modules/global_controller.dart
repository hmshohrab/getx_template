import 'package:get/get.dart';

import '../core/base/base_controller.dart';
import '../data/repository/global_repository.dart';

class GlobalController extends BaseController {
  final GlobalRepository _globalRepository =
      Get.find(tag: (GlobalRepository).toString());
}
