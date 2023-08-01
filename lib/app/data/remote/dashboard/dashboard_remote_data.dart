import 'dart:collection';

import 'package:getx_template/app/data/repository/dashboard/model/home_data_model.dart';

import '../../../core/model/data_response.dart';
import '../../../core/model/list_response.dart';
import '../../repository/dashboard/model/dashboard_model.dart';
import '../../repository/dashboard/model/live_location_model.dart';

abstract class DashboardRemoteDataSource {
  Future<DataResponse<DashboardModel>> changePassword(
      HashMap<String, dynamic> hashMap);

  Future<DataResponse<LiveLocationModel>> saveLiveLocation(
      HashMap<String, dynamic> hashMap);

  Future<ListResponse<HomeDataModel>> getDashData(HashMap<String, dynamic> map);
}
