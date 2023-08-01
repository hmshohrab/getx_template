import 'dart:collection';

import 'package:getx_template/app/core/model/data_response.dart';
import 'package:dio/dio.dart';

import '/app/core/base/base_remote_source.dart';
import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/remote/global_remote_data_source.dart';
import '/app/network/dio_provider.dart';
import '../../../data/end_points.dart';
import '../../../safe_convert.dart';
import '../../core/model/list_response.dart';
import '../model/RawData.dart';
import '../model/attachment_type.dart';
import '../model/beat_attachment_model.dart';

class GlobalRemoteDataSourceImpl extends BaseRemoteSource
    implements GlobalRemoteDataSource {
  @override
  Future<GithubProjectSearchResponse> searchGithubProject(
      GithubSearchQueryParam queryParam) {
    var endpoint = "${DioProvider.baseUrl}/search/repositories";
    var dioCall = dioClient.get(endpoint, queryParameters: queryParam.toJson());

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseGithubProjectSearchResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DataResponse<Attachments>> saveAttachment(
      HashMap<String, dynamic> hashMap, Function uploadingCallback) {
    var endpoint = Endpoints.saveAttachmentUrl + "?token=" + hashMap["token"];
    final formData = FormData.fromMap(hashMap);
    var dioCall = dioClient.post(
      endpoint,
      data: formData,
      onSendProgress: (int sent, int total) {
        double progress = sent / total * 100;
        uploadingCallback(progress);
      },
    );

    try {
      return callApiWithErrorParser(dioCall).then((response) =>
          DataResponse.fromJson(
              response.data,
              () => Attachments.fromJson(
                  asT<Map<String, dynamic>>(response.data, "ResponseObj"))));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DataResponse<BeatAttachmentModel>> updateBeatAttachment(
      HashMap<String, dynamic> hashMap, Function uploadingCallback) {
    var endpoint = Endpoints.saveAttachmentUrl;
    final formData = FormData.fromMap(hashMap);
    var dioCall = dioClient.post(
      endpoint,
      data: formData,
      onSendProgress: (int sent, int total) {
        double progress = sent / total * 100;
        uploadingCallback(progress);
      },
    );

    try {
      return callApiWithErrorParser(dioCall).then((response) =>
          DataResponse.fromJson(
              response.data,
              () => AttachmentType.fromJson(
                  asT<Map<String, dynamic>>(response.data, "ResponseObj"))));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DataResponse<RawData>> getByRefNoRawData(
      HashMap<String, dynamic> hashMap) {
    var endpoint = Endpoints.getByRefNoRawDataUrl;
    var dioCall = dioClient.post(endpoint, data: hashMap);
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => DataResponse.fromJson(response.data, () {
                if (response.data?["ResponseObj"] != null) {
                  return RawData.fromJson(
                      asT<Map<String, dynamic>>(response.data, "ResponseObj"));
                } else {
                  return RawData();
                }
              }));
      /* return callApiWithErrorParser(dioCall)
          .then((response) => DataResponse.fromJson(response.data, () {
                return RawData.fromJson(response.data['ResponseObj']);
              }));*/
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DataResponse<Attachments>> deleteAttachment(
      HashMap<String, dynamic> hashMap) {
    var endpoint = Endpoints.deleteAttachmentUrl;
    var dioCall = dioClient.post(endpoint, data: hashMap);
    try {
      return callApiWithErrorParser(dioCall).then((response) =>
          DataResponse.fromJson(
              response.data,
              () => Attachments.fromJson(
                  asT<Map<String, dynamic>>(response.data, "ResponseObj"))));
      /* return callApiWithErrorParser(dioCall)
          .then((response) => DataResponse.fromJson(response.data, () {
                return RawData.fromJson(response.data['ResponseObj']);
              }));*/
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ListResponse<AttachmentType>> getAllAttachmentType(
      HashMap<String, dynamic> map) {
    var endpoint = Endpoints.getAllAttachmentTypeUrl;
    var dioCall = dioClient.post(endpoint, data: map);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => ListResponse.fromJson(response.data, () {
                List<AttachmentType> items = [];
                if (response.data['ResponseObj'] != null) {
                  response.data['ResponseObj'].forEach((v) {
                    items.add(AttachmentType.fromJson(v));
                  });
                }
                return items;
              }));
    } catch (e) {
      rethrow;
    }
  }

  _parseGithubProjectSearchResponse(Response response) {}
}
