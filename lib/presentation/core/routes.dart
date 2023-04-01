import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/injection.dart';
import 'package:qit_flutter/presentation/auth/pages/sign_in_page.dart';
import 'package:qit_flutter/presentation/core/pages/splash.dart';
import 'package:qit_flutter/presentation/home/pages/home_page.dart';
import 'package:qit_flutter/presentation/home/pages/search_page.dart';
import 'package:qit_flutter/presentation/home/pages/view_product_page.dart';
import 'package:qit_flutter/presentation/settings/pages/settings_page.dart';

import '../auth/pages/signup_page.dart';

class AppRouter {
  static Handler signUpHandler =
      Handler(handlerFunc: (context, params) => const SignUpPage());
  static Handler settingsHandler =
      Handler(handlerFunc: (context, params) => const SettingsPage());
  static Handler signInHandler =
      Handler(handlerFunc: (context, params) => const SignInPage());
  static Handler homeHandler =
      Handler(handlerFunc: (context, params) => const HomePage());
  static Handler searchHandler =
      Handler(handlerFunc: (context, params) => const HomeSearchPage());
  static Handler splashHandler =
      Handler(handlerFunc: (context, params) => const SplashPage());
  static Handler viewProductHandler = Handler(handlerFunc: (context, params) {
    int id = int.parse(params['id']![0]);
    return ViewProductPage(
      id: id,
    );
  });

  static void configureRoutes(FluroRouter router) {
    router.define(SignUpPage.routeName, handler: signUpHandler);
    router.define(SignInPage.routeName, handler: signInHandler);
    router.define(HomePage.routeName, handler: homeHandler);
    router.define(SettingsPage.routeName, handler: settingsHandler);
    router.define(HomeSearchPage.routeName, handler: searchHandler);
    router.define(SplashPage.routeName, handler: splashHandler);
    router.define("${ViewProductPage.routeName}/:id",
        handler: viewProductHandler);
  }
}

final route = FluroRouter.appRouter;

extension Route on BuildContext {
  FluroRouter get router => getIt<ApplicationRouter>().router;
}

@singleton
class ApplicationRouter {
  FluroRouter router = FluroRouter();
}
