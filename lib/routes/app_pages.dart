import 'package:get/get.dart';
import '../bindings/home_binding.dart';
import '../pages/home/home.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
