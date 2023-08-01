import 'model/token_model.dart';
import 'model/user_model.dart';

abstract class AuthRepository {
  Future<TokenModel> login(Map<String, dynamic> map);

  Future<void> saveToken(String token);

  Future<String> getToken();

  Future<UserModel> getUserInfo();

  Future<void> saveUserInfo(UserModel? userModel);

  Future<bool> clearAll();
}
