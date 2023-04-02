import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/presentation/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/home/pages/home_page.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart';

import '../../auth/pages/sign_in_page.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = "/splash";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool error = false;
  bool auth = false;
  bool loading = false;

  @override
  void initState() {
    context.read<AuthBloc>().add(const AuthFromDevice());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        constraints: const BoxConstraints.expand(),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: 100.h,
                  child: Text(
                    "welcome".tr(),
                    style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w300),
                  )),
              Icon(
                Icons.handshake,
                size: 50,
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        height: 220.h,
        alignment: Alignment.center,
        child: BlocConsumer<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthLoading) {
              return CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              );
            } else if (state is UnAuthState ||
                (state is AuthFail &&
                    state.failure.type != FailureType.networkError)) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.router
                          .navigateTo(context, "${SignInPage.routeName}/true");
                    },
                    child: Container(
                      width: 1000.w,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "sign_in".tr(),
                        style: TextStyle(fontSize: 15.sp, color: Colors.white),
                      ),
                    ),
                  ),
                  20.h.spaceHeight(),
                  GestureDetector(
                    onTap: () {
                      context.router.navigateTo(context, HomePage.routeName,
                          clearStack: true);
                    },
                    child: Container(
                      width: 1000.w,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "skip".tr(),
                        style: TextStyle(fontSize: 15.sp, color: Colors.black),
                      ),
                    ),
                  ),
                  20.h.spaceHeight(),
                ],
              );
            } else if (state is AuthFail &&
                state.failure.type == FailureType.networkError) {
              return errorWidget(() {
                //context.read<AuthBloc>().add(const AuthReset());
                context.read<AuthBloc>().add(const AuthFromDevice());
              }, context);
            }
            return const SizedBox();
          },
          listener: (context, state) {
            if (state is Authenticated) {
              context.router
                  .navigateTo(context, HomePage.routeName, clearStack: true);
            }
          },
        ),
      ),
    );
  }
}

Widget errorWidget(Function call, context) {
  return Column(
    children: [
      Text("no_network".tr(),
          style: TextStyle(
              color: Theme.of(context).colorScheme.error, fontSize: 17.sp)),
      20.h.spaceHeight(),
      InkWell(
        onTap: () {
          call.call();
        },
        child: Container(
          width: 100.w,
          height: 30.h,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: BorderRadius.circular(22)),
          alignment: Alignment.center,
          child: Text(
            "retry".tr(),
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
        ),
      )
    ],
  );
}
