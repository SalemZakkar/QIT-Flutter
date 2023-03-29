import 'package:fluro/fluro.dart';

import '../auth/signup/pages/signup_page/signup_page.dart';

class AppRouter {
  static FluroRouter router = FluroRouter();
  static Handler signUpHandler =
      Handler(handlerFunc: (context, params) => const SignUpPage());

  static void configureRoutes() {
    router.define(SignUpPage.routeName, handler: signUpHandler);
  }
}

final router = FluroRouter.appRouter;
