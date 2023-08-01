import 'dart:collection';

import 'package:getx_template/app/core/core.dart';
import 'package:getx_template/app/data/model/RawData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/base/base_controller.dart';
import '../core/model/upload_status.dart';
import '../data/model/attachment_type.dart';
import '../data/repository/auth/auth_repository.dart';
import '../data/repository/global_repository.dart';
import '../network/exceptions/base_exception.dart';


class GlobalController extends BaseController {
  final GlobalRepository _globalRepository =
      Get.find(tag: (GlobalRepository).toString());

}
