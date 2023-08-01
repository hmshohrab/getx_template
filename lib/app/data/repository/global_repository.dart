import 'dart:collection';

import 'package:getx_template/app/core/core.dart';

import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '../model/RawData.dart';
import '../model/attachment_type.dart';

abstract class GlobalRepository {
  Future<GithubProjectSearchResponse> searchProject(
      GithubSearchQueryParam queryParam);

  Future<DataResponse<RawData>> getByRefNoRawData(
      HashMap<String, dynamic> hashMap);

  Future<DataResponse<Attachments>> saveAttachment(
      HashMap<String, dynamic> hashMap, Function uploadingCallback);
  Future<DataResponse<Attachments>> deleteAttachment(
      HashMap<String, dynamic> hashMap);
  Future<ListResponse<AttachmentType>> getAllAttachmentType(HashMap<String, dynamic> map);
}
