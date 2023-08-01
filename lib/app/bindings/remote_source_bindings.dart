import 'package:get/get.dart';

import '/app/data/remote/global_remote_data_source.dart';
import '/app/data/remote/global_remote_data_source_impl.dart';
import '../data/remote/auth/auth_remote_data_source.dart';
import '../data/remote/auth/auth_remote_data_source_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalRemoteDataSource>(
      () => GlobalRemoteDataSourceImpl(),
      tag: (GlobalRemoteDataSource).toString(),
    );
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(),
      tag: (AuthRemoteDataSource).toString(),
    );
  }
}
