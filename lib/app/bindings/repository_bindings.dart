import 'package:get/get.dart';

import '/app/data/repository/global_repository.dart';
import '/app/data/repository/global_repository_impl.dart';
import '../data/repository/auth/auth_repository.dart';
import '../data/repository/auth/auth_repository_impl.dart';
import '../data/repository/dashboard/dash_repository.dart';
import '../data/repository/dashboard/dash_repository_impl.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalRepository>(
      () => GlobalRepositoryImpl(),
      tag: (GlobalRepository).toString(),
    );
/*    Get.lazyPut<DioClient>(
      () => DioClient(baseUrlApi, Dio(),
          loggingInterceptor: LoggingInterceptor()),
      tag: (DioClient).toString(),
    );*/
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(),
      tag: (AuthRepository).toString(),
    );
    Get.lazyPut<DashRepository>(
      () => DashRepositoryImpl(),
      tag: (DashRepository).toString(),
    );
  }
}
