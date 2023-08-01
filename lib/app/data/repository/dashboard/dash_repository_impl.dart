import 'dart:collection';

import 'package:getx_template/app/core/model/list_response.dart';
import 'package:getx_template/app/data/repository/dashboard/model/home_data_model.dart';
import 'package:get/get.dart' as get_x;
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants.dart';
import '../../../core/model/data_response.dart';
import '../../local/preference/preference_manager.dart';
import '../../remote/dashboard/dashboard_remote_data.dart';
import '../auth/model/user_model.dart';
import 'dash_repository.dart';
import 'model/dashboard_model.dart';
import 'model/live_location_model.dart';

class DashRepositoryImpl implements DashRepository {
  final PreferenceManager _preferenceManager =
      get_x.Get.find(tag: (PreferenceManager).toString());

  final DashboardRemoteDataSource _remoteSource =
      Get.find(tag: (DashboardRemoteDataSource).toString());

  @override
  Future<UserModel> getUserInfo() async {
    String userData = await _preferenceManager.getString(Constants.userData,
        defaultValue: "{}");
    return userModelFromJson(userData);
  }

  @override
  Future<DataResponse<DashboardModel>> changePassword(
      HashMap<String, dynamic> hashMap) {
    return _remoteSource.changePassword(hashMap);
  }

  @override
  Future<DataResponse<LiveLocationModel>> saveLiveLocation(HashMap<String, dynamic> hashMap) {
    return _remoteSource.saveLiveLocation(hashMap);

  }

  @override
  Future<ListResponse<HomeDataModel>> getDashData(HashMap<String, dynamic> map) {
    return _remoteSource.getDashData(map);
  }
}
