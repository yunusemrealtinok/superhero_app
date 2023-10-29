import 'package:get/get.dart';
import '../modules/info_page/bindings/info_page_binding.dart';
import '../modules/info_page/views/info_page_view.dart';
import '../modules/tabbar/bindings/tabbar_binding.dart';
import '../modules/tabbar/views/tabbar_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TABBAR;

  static final routes = [
    GetPage(
      name: _Paths.INFO_PAGE,
      page: () => const InfoPageView(),
      binding: InfoPageBinding(),
    ),
    GetPage(
      name: _Paths.TABBAR,
      page: () => const TabbarView(),
      binding: TabbarBinding(),
    ),
  ];
}
