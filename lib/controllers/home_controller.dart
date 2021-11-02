import '../base/base_controller.dart';
import '../models/default_data.dart';
import '../utils/functions.dart';

class HomeController extends BaseController {
  var count = 0.obs;
  Rx<DefaultData> dataDefault = DefaultData().obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    checkInternet();
    onGetDefaultData();
  }

  void increment() {
    // showLoadingDialog();
    count++;
    // update(); // use update() to update counter variable on UI when increment be called
  }

  void onGetDefaultData() async {
    showLoadingDialog();
    var res = await getDefaultData();
    if (res.isSuccess) {
      dataDefault.value = DefaultData.fromJson(res.body);
    }
    hideDialog();
  }

  void onCreateAccessKey(dynamic body) async {
    showLoadingDialog();
    var res = await createAccessKey(body);
    FunctionUtils.logWhenDebug("onCreateAccessKey", res.message);
    hideDialog();
    if (!res.isSuccess) {
      showDialogError(res.message, () {
        Get.back();
      });
    }
  }

  void checkInternet() async {
    bool haveInternet = await FunctionUtils.checkNetWork();
    FunctionUtils.logWhenDebug("checkInternet", haveInternet.toString());
  }
}
