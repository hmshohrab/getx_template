import 'dart:collection';

import 'package:getx_template/app/core/model/data_response.dart';
 import 'package:get/get.dart';

import '../local/preference/preference_manager.dart';
import '../model/RawData.dart';
import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/remote/global_remote_data_source.dart';
import '/app/data/repository/global_repository.dart';
import '../../core/model/list_response.dart';
import '../model/attachment_type.dart';
import 'package:get/get.dart' as get_x;

class GlobalRepositoryImpl implements GlobalRepository {
  final GlobalRemoteDataSource _remoteSource =
      Get.find(tag: (GlobalRemoteDataSource).toString());

  final PreferenceManager _preferenceManager =
  get_x.Get.find(tag: (PreferenceManager).toString());
  @override
  Future<GithubProjectSearchResponse> searchProject(
      GithubSearchQueryParam queryParam) {
    return _remoteSource.searchGithubProject(queryParam);
  }

  @override
  Future<DataResponse<Attachments>> saveAttachment(
      HashMap<String, dynamic> hashMap, Function uploadingCallback) {

    return _remoteSource.saveAttachment(hashMap, uploadingCallback);
  }

  @override
  Future<DataResponse<RawData>> getByRefNoRawData(HashMap<String, dynamic> hashMap) {
   return _remoteSource.getByRefNoRawData(hashMap);
  }

  @override
  Future<ListResponse<AttachmentType>> getAllAttachmentType(HashMap<String, dynamic> map) {
    return _remoteSource.getAllAttachmentType(map);
  }

  @override
  Future<DataResponse<Attachments>> deleteAttachment(HashMap<String, dynamic> hashMap) {
   return _remoteSource.deleteAttachment(hashMap);
  }
}
