import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:qit_flutter/presentation/auth/pages/signup_page.dart';
import 'package:qit_flutter/presentation/core/extension/screen_util_extension.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/core/sources/assets.gen.dart';
import 'package:qit_flutter/presentation/home/pages/home_page.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart' as sz;

import '../../../injection.dart';
import '../../core/utils/validator.dart';

class SignInPage extends StatefulWidget {
  static const String routeName = "/signIn";
  final bool ret;

  const SignInPage({Key? key, required this.ret}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with sz.ScreenUtil {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  var bloc = getIt<SignInBloc>();
  bool buttonLoading = false;

  @override
  void initState() {
    errorMessages = {
      FailureType.networkError: "no_network".tr(),
      FailureType.invalidArguments: "invalid_auth".tr(),
      FailureType.serverError: "server_error".tr(),
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50.h,
        ),
        body: BlocListener<SignInBloc, sz.BaseState>(
          bloc: bloc,
          listener: (context, state) {
            if (state.progress) {
              setState(() {
                buttonLoading = true;
              });
            } else {
              setState(() {
                buttonLoading = false;
              });
            }
            if (state.success) {
              if (widget.ret) {
                context.router.pop(context);
              } else {
                context.router
                    .navigateTo(context, HomePage.routeName, clearStack: true);
              }
            }
            if (state.fail) {
              showErrorDialog(context, state.failure!.type);
            }
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            constraints: const BoxConstraints.expand(),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: globalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Assets.images.signin.path, width: 100.w),
                    80.h.spaceHeight(),
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(hintText: "email".tr()),
                      textDirection: m.TextDirection.ltr,
                      validator: (data) {
                        if (data?.isEmpty == true ||
                            !Validator.checkEmail(data!)) {
                          return "email_invalid".tr();
                        }
                        return null;
                      },
                    ),
                    20.h.spaceHeight(),
                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(hintText: "password".tr()),
                      obscureText: true,
                      textDirection: m.TextDirection.ltr,
                      validator: (data) {
                        if (data?.isEmpty == true &&
                            !Validator.checkPassword(data!)) {
                          return "password_invalid".tr();
                        }
                        return null;
                      },
                    ),
                    20.h.spaceHeight(),
                    sz.AnimatedButton(
                        loading: buttonLoading,
                        loadColor: Colors.white,
                        height: 45.h,
                        width: 1000.w,
                        onPressed: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          if (globalKey.currentState!.validate()) {
                            bloc.add(SignIn(
                                email: email.text, password: password.text));
                          }
                        },
                        child: Text("sign_in".tr())),
                    15.h.spaceHeight(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            style: Theme.of(context).textButtonTheme.style,
                            onPressed: () {
                              Navigator.pushNamed(context,
                                  "${SignUpPage.routeName}/${widget.ret.toString()}");
                            },
                            child: Text(
                              "dont_have_account".tr(),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
