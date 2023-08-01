import 'package:get/get.dart' as get_x;

import '../../../../utils/constants.dart';
import '../../local/preference/preference_manager.dart';
import '../../remote/auth/auth_remote_data_source.dart';
import 'auth_repository.dart';
import 'model/token_model.dart';
import 'model/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  // 'Authorization': Config.token,
  final AuthRemoteDataSource _remoteDataSource =
      get_x.Get.find(tag: (AuthRemoteDataSource).toString());
  final PreferenceManager _preferenceManager =
      get_x.Get.find(tag: (PreferenceManager).toString());

  //final PrefHelper prefHelper;

  // Login Api
  @override
  Future<TokenModel> login(Map<String, dynamic> map) {
    return _remoteDataSource.login(map);
  }

  // for  user token
  @override
  Future<void> saveToken(String token) async {
    _remoteDataSource.updateHeader(token);
    try {
      _preferenceManager.setString(PreferenceManager.keyToken, token);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> getToken() async {
    try {
      final token = await _preferenceManager
          .getString(PreferenceManager.keyToken, defaultValue: "");
      _remoteDataSource.updateHeader(token);
      return token;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveUserInfo(UserModel? userModel) async {
    if (userModel != null) {
      _preferenceManager.setString(
          Constants.userData, userModelToJson(userModel));
    }
  }

  @override
  Future<UserModel> getUserInfo() async {
    String userData = await _preferenceManager.getString(Constants.userData,
        defaultValue: "{}");
    return userModelFromJson(userData);
  }

  @override
  Future<bool> clearAll() {
    return _preferenceManager.clear();
  }
}
