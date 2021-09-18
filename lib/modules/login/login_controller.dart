import 'package:get/get.dart';

import '../../aplication/ui/loader/loader_mixin.dart';
import '../../aplication/ui/messages/messages_mixin.dart';
import '../../services/login/login_service.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;

  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({
    required LoginService loginService,
  }) : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListenet(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading.value = true;
      await _loginService.login();
      loading.value = false;
      message(MessageModel.info(
          title: 'Sucesso', message: 'Login Realizado com sucesso'));
    } catch (e, s) {
      print(e);
      print(s);
      loading.value = false;
      message(MessageModel.error(
          title: 'Login Error', message: "Erro ao realizar login!"));
    }
  }
}
