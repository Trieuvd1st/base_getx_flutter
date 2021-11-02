import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../setting/theme.dart';
import '../translations/translation.dart';

import 'env.dart';
import 'routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //  await Firebase.initializeApp(); //Firebase
  await GetStorage.init(); //Init Storage

  //Setting file build
  BuildEnvironment.init(
      flavor: BuildFlavor.dev,
      domain: 'api.covid19api.com',
      protocol: "https://");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      theme: ThemeDataSetting.lightTheme,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      locale: MyTranslations.locale,
      fallbackLocale: MyTranslations.fallbackLocale,
      translations: MyTranslations(),
    );
  }
}
