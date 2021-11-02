import 'dart:convert';

class BaseResponse<T> {
  BaseResponse(
      {this.timestamp,
      this.status,
      this.error,
      this.message,
      this.path,
      this.isSuccess});

  String timestamp;
  int status;
  String error;
  String message;
  String path;
  bool isSuccess;
  T body;

  factory BaseResponse.fromJson(String str) =>
      BaseResponse.fromMap(json.decode(str));
  String toJson() => json.encode(toMap());

  factory BaseResponse.fromMap(Map<String, dynamic> json) => BaseResponse(
      timestamp: json["timestamp"] == null ? null : json["timestamp"],
      status: json["status"] == null ? null : json["status"],
      error: json["error"] == null ? null : json["error"],
      message: json["message"] == null ? null : json["message"],
      path: json["path"] == null ? null : json["path"]);

  Map<String, dynamic> toMap() => {
        "timestamp": timestamp == null ? null : timestamp,
        "status": status == null ? null : status,
        "error": error == null ? null : error,
        "message": message == null ? null : message,
        "path": path == null ? null : path,
      };
}
