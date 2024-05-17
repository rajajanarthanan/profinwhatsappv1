import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // To Register dependencies
  // locator.registerSingleton<Service1>(Service1());
  // locator.registerLazySingleton<Service2>(() => Service2());
}

//final Service1 = locator<Service1>();
//disposeLocator() to dispose dependencies
