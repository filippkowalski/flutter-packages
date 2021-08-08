part of fk_common_utils;

class PermissionChecker {
  Future<PermissionStatus> checkPermission(Permission permission) async {
    return await permission.status;
  }

  Future<PermissionStatus> requestPermissionIfNecessary(
      Permission permission) async {
    final PermissionStatus permissionStatus = await checkPermission(permission);

    if (permissionStatus == PermissionStatus.granted) {
      return permissionStatus;
    } else {
      return await permission.request();
    }
  }
}
