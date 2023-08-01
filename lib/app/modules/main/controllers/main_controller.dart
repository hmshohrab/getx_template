import 'package:get/get.dart';

import '/app/core/base/base_controller.dart';
import '/app/modules/main/model/menu_code.dart';
import '../../../data/repository/auth/auth_repository.dart';

class MainController extends BaseController {
  final _selectedMenuCodeController = MenuCode.HOME.obs;
  final AuthRepository _authRepository =
      Get.find(tag: (AuthRepository).toString());

  MenuCode get selectedMenuCode => _selectedMenuCodeController.value;

  final lifeCardUpdateController = false.obs;

  onMenuSelected(MenuCode menuCode) async {
    _selectedMenuCodeController(menuCode);
  }
}
