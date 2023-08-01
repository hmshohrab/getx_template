import '../../repository/auth/model/token_model.dart';

abstract class AuthRemoteDataSource {
  Future<TokenModel> login(Map<String, dynamic> map);

  void updateHeader(String token);

}
