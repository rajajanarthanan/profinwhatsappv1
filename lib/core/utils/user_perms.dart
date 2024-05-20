import 'package:permission_handler/permission_handler.dart';

class UserPerms {
  Future<bool> checkPermission(Permission permission) async {
    var status = await permission.status;

    // return ture if(status.isGranted) else return this.requestPermission(permission);
    return status.isGranted ? true : await requestPermission(permission);
  }

  Future<bool> requestPermission(Permission permission) async {
    var status = await permission.request();
    return status.isGranted;
  }
}
