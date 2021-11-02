import '../base/base_controller.dart';
import '../helper/api_base.dart';
import '../helper/base_response.dart';
import '../utils/urls.dart';

/// In this class where the [Function]s correspond to the API.
/// Which function here you will make it and you will consume it.
/// You can find and use on your Controller wich is the Controller extends [BaseController].
class Repositories {
  ApiBaseHelper _service = ApiBaseHelper();

  Future<BaseResponse> getDefaultData() async =>
      await _service.getData(url: "");

  Future<BaseResponse> getSummary() async =>
      await _service.getData(url: UrlUtils.SUMMARY);

  Future<BaseResponse> createAccessKey(dynamic body) async =>
      await _service.postData(url: UrlUtils.CREATE_ACCESS_KEY, body: body);
}
