import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/injection.dart';
import 'package:qit_flutter/presentation/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:qit_flutter/presentation/core/pages/splash.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/core/sources/light_theme.dart';

class QitFlutterApp extends StatefulWidget {
  const QitFlutterApp({Key? key}) : super(key: key);

  @override
  State<QitFlutterApp> createState() => _QitFlutterAppState();
}

class _QitFlutterAppState extends State<QitFlutterApp> {
  @override
  void initState() {
    AppRouter.configureRoutes(getIt<ApplicationRouter>().router);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<AuthBloc>(
                create: (context) => getIt<AuthBloc>(),
              )
            ],
            child: MaterialApp(
              builder: (context, child) {
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: child,
                );
              },
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              home: child,
              theme: lightTheme,
              onGenerateRoute: context.router.generator,
            ),
          );
        },
        child: const SplashPage());
  }
}
