import 'package:injector/injector.dart';

void setupInjector() {
  // To Register dependencies
  // locator.registerSingleton<Service1>(Service1());
  // locator.registerLazySingleton<Service2>(() => Service2());
  final injector = Injector.appInstance;
  MainModule.registerDependencies(injector);
}

class AuthModule {
  static void registerDependencies(Injector injector) {
    injector.registerSingleton<AuthService>((_) => AuthService());
    // injector.registerSingleton<UserService>((_) => UserService());
    // injector.registerSingleton<NetworkService>((_) => NetworkService());
  }
}

class MainModule {
  static void registerDependencies(Injector injector) {
    AuthModule.registerDependencies(injector);
    // Register other dependencies for the main module
  }
}

//final Service1 = locator<Service1>();
//disposeLocator() to dispose dependencies

class AuthService {
  // Auth service implementation
  AuthService();
}
