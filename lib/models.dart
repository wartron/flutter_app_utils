///class that holds queried application bundle information
class BundleInfo {
  final String appName;
  final String appIdentifier;
  final String version;
  final String buildNo;
  final String flags;
  final String sourceDir;

  BundleInfo(this.appName, this.appIdentifier, this.version, this.buildNo, this.flags, this.sourceDir);

  static BundleInfo fromJson(dynamic json) {
    return BundleInfo(
        json["appName"] ?? 'null',
        json["appIdentifier"] ?? 'null',
        json["version"] ?? 'null',
        (json["buildNo"] ?? 'null').toString(),
        (json["flags"] ?? 'null').toString(),
        json["sourceDir"] ?? 'null'
      );
  }
}

class DeviceInfo{
  String name;
  String brand;
  String osVersion;
  String id;

  DeviceInfo(this.name,this.brand,this.id,this.osVersion);

  static DeviceInfo fromJson(dynamic json){
     return DeviceInfo(
       json["deviceName"],
       json["deviceBrand"],
       json["deviceId"],
       json["osVersion"]
     );
  }
}
