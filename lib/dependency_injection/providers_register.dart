import 'package:injector/injector.dart';
import 'package:user_list/data/repositories/user_list/user_list_http_repository.dart';
import 'package:user_list/data/repositories/user_list/user_list_local_repository.dart';
import 'package:user_list/domain/providers/user_list_provider.dart';

class ProvidersRegister {
  void regist() {
    final injector = Injector.appInstance;

    injector.registerDependency<UserListHttpRepository>(() => UserListHttpRepository());
    injector.registerDependency<UserListLocalRepository>(() => UserListLocalRepository());

    injector.registerSingleton(() => UserListProvider(
      injector.get<UserListHttpRepository>()
    ));
  }
}