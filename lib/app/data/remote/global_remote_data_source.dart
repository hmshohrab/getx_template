import 'dart:collection';

import '../../core/model/data_response.dart';
import '../model/RawData.dart';
 import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '../../core/model/list_response.dart';
import '../model/attachment_type.dart';

abstract class GlobalRemoteDataSource {
  Future<GithubProjectSearchResponse> searchGithubProject(
      GithubSearchQueryParam queryParam);
  Future<DataResponse<RawData>> getByRefNoRawData(
      HashMap<String, dynamic> hashMap);

  Future<DataResponse<Attachments>> saveAttachment(
      HashMap<String, dynamic> hashMap, Function uploadingCallback);

  Future<DataResponse<Attachments>> deleteAttachment(
      HashMap<String, dynamic> hashMap);

  Future<ListResponse<AttachmentType>> getAllAttachmentType(HashMap<String, dynamic> map);
}
