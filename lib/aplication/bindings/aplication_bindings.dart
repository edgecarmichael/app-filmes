import 'package:app_filmes/aplication/rest_client/rest_client.dart';
import 'package:get/get.dart';

import '../../repositories/login/login_repository.dart';
import '../../repositories/login/login_repository_impl.dart';
import '../../services/login/login_service.dart';
import '../../services/login/login_service_impl.dart';

import '../auth/auth_service.dart';

class AplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient());
    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(),
      fenix: true,
    );
    Get.lazyPut<LoginService>(
      () => LoginServiceImpl(
        loginRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.put(AuthService()).init();
  }
}
