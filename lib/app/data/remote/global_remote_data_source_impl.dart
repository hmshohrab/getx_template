import 'package:dio/dio.dart';

import '/app/core/base/base_remote_source.dart';
import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/remote/global_remote_data_source.dart';
import '/app/network/dio_provider.dart';

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

  _parseGithubProjectSearchResponse(Response response) {}
}
