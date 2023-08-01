import 'dart:collection';

import 'package:getx_template/app/core/model/list_response.dart';
import 'package:getx_template/app/data/repository/dashboard/model/home_data_model.dart';
import 'package:getx_template/app/data/repository/dashboard/model/live_location_model.dart';

import '/app/core/base/base_remote_source.dart';
import '../../../../data/end_points.dart';
import '../../../../safe_convert.dart';
import '../../../core/model/data_response.dart';
import '../../repository/dashboard/model/dashboard_model.dart';
import 'dashboard_remote_data.dart';

class DashboardRemoteDataSourceImpl extends BaseRemoteSource
    implements DashboardRemoteDataSource {
  @override
  Future<DataResponse<DashboardModel>> changePassword(
      HashMap<String, dynamic> hashMap) {
    var endpoint = Endpoints.changePasswordUrl;
    var dioCall = dioClient.post(endpoint, data: hashMap);

    try {
      return callApiWithErrorParser(dioCall).then(
          (response) => /* DataResponse.fromJson(response.data, () {
            if(response.data["ResponseObj"] is Map<String,dynamic>) {
              return PoVisitResponse.fromJson(response.data["ResponseObj"]);
            }else{
              return null;
            }
              }));*/
              DataResponse.fromJson(
                  response.data,
                  () => DashboardModel.fromJson(asT<Map<String, dynamic>>(
                      response.data, "ResponseObj"))));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DataResponse<LiveLocationModel>> saveLiveLocation(HashMap<String, dynamic> hashMap) {
    var endpoint = Endpoints.loginUrl;
    var dioCall = dioClient.post(endpoint, data: hashMap);

    try {
      return callApiWithErrorParser(dioCall).then(
              (response) =>
          DataResponse.fromJson(
              response.data,
                  () => LiveLocationModel.fromJson(asT<Map<String, dynamic>>(
                  response.data, "ResponseObj"))));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ListResponse<HomeDataModel>> getDashData(
      HashMap<String, dynamic> map) {
    var endpoint = Endpoints.dashboardMobileUrl;
    var dioCall = dioClient.post(endpoint, data: map);

    try {
      return callApiWithErrorParser(dioCall).then((response) =>
          ListResponse.fromJson(
              response.data,
                  () {
                List<HomeDataModel> items = [];
                if (response.data['ResponseObj'] != null) {
                  response.data['ResponseObj'].forEach((v) {
                    items.add(HomeDataModel.fromJson(v));
                  });
                }
                return items;
              }));
    } catch (e) {
      rethrow;
    }
  }
}
