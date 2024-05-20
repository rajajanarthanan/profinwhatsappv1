import 'package:injector/injector.dart';
import 'package:profinwhatsapp/core/views/base_widgets/pro_button.dart';
import 'package:profinwhatsapp/core/base/base_viewmodel.dart';
import 'package:profinwhatsapp/core/utils/user_perms.dart';

void setupInjector() {
  final injector = Injector.appInstance;
  MainModule.registerDependencies(injector);
}

class BaseModule {
  static void registerDependencies(Injector injector) {
    injector.registerSingleton<BaseViewModel>(() => BaseViewModel());
    injector.registerSingleton<UserPerms>(() => UserPerms());
    injector.registerSingleton<BaseWidgets>(() => BaseWidgets());
  }
}

class AuthModule {
  static void registerDependencies(Injector injector) {
    // injector.registerSingleton<AuthService>((_) => AuthService());
    // injector.registerSingleton<UserService>((_) => UserService());
    // injector.registerSingleton<NetworkService>((_) => NetworkService());
  }
}

class MainModule {
  static void registerDependencies(Injector injector) {
    // AuthModule.registerDependencies(injector);
    BaseModule.registerDependencies(injector);
    // Register other dependencies for the main module
  }
}

//final Service1 = locator<Service1>();
//disposeLocator() to dispose dependencies

class AuthService {
  // Auth service implementation
  AuthService();
}
