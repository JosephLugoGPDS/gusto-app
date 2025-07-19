import 'package:app/presentation/splash/page/splash_page.dart';
import 'package:app/presentation/taste/pages/taste_full_detail_page.dart';
import 'package:app/presentation/taste/pages/taste_list_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class Routes {
  final FluroRouter router;
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  Routes(this.router);

  String get root => '/';
  String get splash => '/splash';
  String get preferences => 'taste';
  String get preferenceDetail => 'taste/:id';
  String get preferencesCreate => 'taste/create';

  static final Handler _splashHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const SplashPage());
  static final Handler _tasteHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const TasteListPage());
  static final Handler _tasteDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          TasteFullDetailPage(
            id: params['id'][0],
          ));

  void configureRoutes() {
    router.define(root, handler: _splashHandler);
    router.define(splash, handler: _splashHandler);
    router.define(preferences, handler: _tasteHandler);
    router.define(preferenceDetail, handler: _tasteDetailHandler);
  }
}
