import '/app/core/base/base_remote_source.dart';
import '../../../../data/end_points.dart';
import '../../repository/auth/model/token_model.dart';
import 'auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl extends BaseRemoteSource
    implements AuthRemoteDataSource {
  @override
  Future<TokenModel> login(Map<String, dynamic> map) {
    var dioCall = dioClient.post(Endpoints.loginUrl, data: map);
    try {
      logger.d("message");

      return callApiWithErrorParser(dioCall)
          .then((response) => TokenModel.fromJson(response.data));
    } catch (e) {
      logger.d("message");
      rethrow;
      //return Future(() => ApiResponse.withError(ApiErrorHandler.getMessage(e)));
    }
  }

  @override
  void updateHeader(String token) {
    dioClient.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': token
    };
  }
}
