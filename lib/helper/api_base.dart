import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get_storage/get_storage.dart';
// import '../utils/constants.dart';
import '../env.dart';
import '../utils/functions.dart';

import 'base_response.dart';

final box = GetStorage();

class ApiBaseHelper {
  _ApiHandle _api = _ApiHandle();
  Future<BaseResponse> getData(
      {@required String url,
      Map<String, String> params,
      bool withToken = false}) async {
    return await _api.getData(url: url, params: params, withToken: withToken);
  }

  Future<BaseResponse> postData(
      {@required String url,
      dynamic body,
      Map<String, String> params,
      bool withToken = false}) async {
    return await _api.postData(url: url, params: params, withToken: withToken);
  }
}

class _ApiHandle extends GetConnect {
  bool _withToken = false;
  BaseResponse _responseReturn = BaseResponse();
  @override
  void onInit() async {
    httpClient.baseUrl = BuildEnvironment.getInstace().protocol +
        BuildEnvironment.getInstace().domain;
    httpClient.addRequestModifier((request) {
      if (_withToken) {
        //Lấy token có sẵn, phần này sẽ xử lý sau
        // String token = box.read(ConstantsUtils.TOKEN_STRING_KEY);
        // if (token != null) request.headers['Authorization'] = "Bearer $token";
      }
      return request;
    });
    super.onInit();
  }

  Future<BaseResponse> getData(
      {@required String url,
      Map<String, String> headers,
      Map<String, dynamic> params,
      bool withToken = false}) async {
    _withToken = withToken;
    onInit();
    FunctionUtils.logWhenDebug("GET", httpClient.baseUrl + url);
    FunctionUtils.logWhenDebug("PARAMS", params.toString());
    return performRequest(
      (Map<String, String> refreshedHeaders) {
        return get(url, query: params ?? {});
      },
      headers: headers,
    );
  }

  Future<BaseResponse> postData(
      {@required String url,
      dynamic body,
      Map<String, String> headers,
      Map<String, dynamic> params,
      bool withToken = false}) async {
    _withToken = withToken;
    FunctionUtils.logWhenDebug("POST", httpClient.baseUrl + url);
    FunctionUtils.logWhenDebug("body", body.toString());
    return performRequest(
      (Map<String, String> refreshedHeaders) {
        return post(
          url,
          body ?? {},
          headers: headers,
          query: params ?? {},
        );
      },
      headers: headers,
    );
  }

  Future<BaseResponse> performRequest(
      Future<Response> Function(Map<String, String>) request,
      {Map<String, String> headers}) async {
    try {
      Response response = await request(headers);
      FunctionUtils.logWhenDebug("RESPONSE", response.bodyString);
      switch (response.statusCode) {
        case 200:
          //Success
          _responseReturn.body = response.body;
          _responseReturn.isSuccess = true;
          return _responseReturn;
        case 400:
          // パラメータエラー (Parameter error)
          _responseReturn = BaseResponse.fromJson(response.body);
          _responseReturn.body = null;
          _responseReturn.isSuccess = false;
          return _responseReturn;
        case 401:
          // 権限なしエラー (Unauthorized error)
          _responseReturn = BaseResponse.fromJson(response.bodyString);
          _responseReturn.body = null;
          _responseReturn.isSuccess = false;
          return _responseReturn;
        case 403:
          _responseReturn = BaseResponse.fromJson(response.bodyString);
          _responseReturn.body = null;
          _responseReturn.isSuccess = false;
          return _responseReturn;
        case 404:
          // データなしエラー (No data error)
          _responseReturn = BaseResponse.fromJson(response.bodyString);
          _responseReturn.body = null;
          _responseReturn.isSuccess = false;
          return _responseReturn;
        case 500:
          // システムエラー (System error)
          _responseReturn = BaseResponse.fromJson(response.bodyString);
          _responseReturn.body = null;
          _responseReturn.isSuccess = false;
          return _responseReturn;
        default:
          return _responseReturn;
      }
    } catch (exception) {
      FunctionUtils.logWhenDebug("NETWORK_ERROR", exception.toString());
      _responseReturn.body = null;
      _responseReturn.isSuccess = false;
      return _responseReturn;
    }
  }
}

// class ApiBaseHelper extends GetConnect {
//   // static AuthController authController = Get.find();
//   static Map<String, String> getDefaultHeader() {
//     return {
//       'Content-type': 'application/json;charset=UTF-8',
//       'Accept': 'application/json',
//       // 'Authorization': "Bearer ${authController?.authModel?.accessToken ?? ""}",
//     };
//   }

//   static Map<String, String> getFromDataDefaultHeader() {
//     return {
//       'Content-type': 'multipart/form-data;charset=UTF-8',
//       // 'Authorization': "Bearer ${authController?.authModel?.accessToken ?? ""}",
//     };
//   }

//   static Map<String, String> getRefreshedHeader() {
//     return {
//       'Content-type': 'application/json;charset=UTF-8',
//       'Accept': 'application/json',
//       // 'Authorization':
//       //     "Bearer ${authController?.authModel?.accessToken ?? ""}",
//     };
//   }

//   Future<Response> getData({
//     Map<String, String> headers,
//     Map<String, dynamic> params,
//     @required String url,
//   }) async {
//     print(UrlUtils.urlConnect(url));
//     print(params);
//     print(getDefaultHeader().toString());
//     return performRequest(
//       (Map<String, String> refreshedHeaders) {
//         return get(
//           UrlUtils.urlConnect(url),
//           headers: headers ?? getDefaultHeader(),
//           query: params ?? {},
//         );
//       },
//       headers: headers,
//     );
//   }

//   Future<Response> postData({
//     @required String url,
//     dynamic body,
//     Map<String, String> headers,
//     Map<String, dynamic> params,
//   }) async {
//     print(UrlUtils.urlConnect(url));
//     print("body:" + body.toString());
//     print(getDefaultHeader().toString());
//     return performRequest(
//       (Map<String, String> refreshedHeaders) {
//         return post(
//           UrlUtils.urlConnect(url),
//           body ?? {},
//           headers: headers ?? getDefaultHeader(),
//           query: params ?? {},
//         );
//       },
//       headers: headers,
//     );
//   }

//   static Future<Response> performRequest(
//       Future<Response> Function(Map<String, String>) request,
//       {Map<String, String> headers}) async {
//     try {
//       Response response = await request(headers ?? getDefaultHeader());
//       switch (response.statusCode) {
//         case 401:
//         // AuthController authController = Get.find();
//         // authController.resetVariable();
//         // await StorageHelper.clearLogin();
//         // // Get.offAllNamed(Routes.LOGIN_RULE_PAGE);
//         // return null;
//         case 403:
//         // AuthController authController = Get.find();
//         // authController.resetVariable();
//         // await StorageHelper.clearLogin();
//         // Get.offAllNamed(Routes.LOGIN_RULE_PAGE);
//         // return null;
//         default:
//           return response;
//       }
//     } catch (exception) {
//       return null;
//     }
//   }
// }
