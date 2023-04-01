import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/injection.dart';
import 'package:qit_flutter/presentation/core/extension/screen_util_extension.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/core/sources/assets.gen.dart';
import 'package:qit_flutter/presentation/core/utils/validator.dart';
import 'package:qit_flutter/presentation/home/pages/home_page.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart';
import 'package:salem_package/salem_package.dart' as sz;

import '../blocs/sign_up_bloc/sign_up_bloc.dart';

class SignUpPage extends StatefulWidget {
  static const String routeName = "/signUp";

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with sz.ScreenUtil {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  var signUpBloc = getIt<SignUpBloc>();

  @override
  void initState() {
    errorMessages = {
      FailureType.serverError: "server_error".tr(),
      FailureType.invalidArguments: "user_exists".tr(),
      FailureType.networkError: "no_network".tr(),
    };
    super.initState();
  }

  @override
  void dispose() {
    signUpBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.h,
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 20, left: 20),
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.images.signup.path,
                  height: 270.sp,
                ),
                TextFormField(
                  controller: email,
                  textDirection: m.TextDirection.ltr,
                  decoration: InputDecoration(hintText: 'email'.tr()),
                  validator: (data) {
                    if (data?.isEmpty == true || !Validator.checkEmail(data!)) {
                      return "email_invalid".tr();
                    }
                    return null;
                  },
                ),
                20.spaceHeight(),
                TextFormField(
                  controller: name,
                  textDirection: m.TextDirection.ltr,
                  decoration: InputDecoration(hintText: 'name'.tr()),
                  validator: (data) {
                    if (data?.isEmpty == true || !Validator.checkName(data!)) {
                      return "name_invalid".tr();
                    }
                    return null;
                  },
                ),
                20.spaceHeight(),
                TextFormField(
                  controller: password,
                  textDirection: m.TextDirection.ltr,
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'password'.tr()),
                  validator: (data) {
                    if (password.text != confirmPassword.text) {
                      return "password_mismatch".tr();
                    }
                    if (data?.isEmpty == true ||
                        !Validator.checkPassword(data!)) {
                      return "password_invalid".tr();
                    }
                    return null;
                  },
                ),
                20.spaceHeight(),
                TextFormField(
                  textDirection: m.TextDirection.ltr,
                  controller: confirmPassword,
                  obscureText: true,
                  decoration:
                      InputDecoration(hintText: 'confirm_password'.tr()),
                  validator: (data) {
                    if (password.text != confirmPassword.text) {
                      return "password_mismatch".tr();
                    }
                    if (data?.isEmpty == true ||
                        !Validator.checkPassword(data!)) {
                      return "password_invalid".tr();
                    }
                    return null;
                  },
                ),
                20.spaceHeight(),
                BlocListener<SignUpBloc, BaseState>(
                  bloc: signUpBloc,
                  listener: (context, state) {
                    if (state.progress) {
                      showLoading(context);
                    }
                    if (state.success) {
                      stopLoading(context);
                      context.router.navigateTo(context, HomePage.routeName,
                          clearStack: true);
                    }
                    if (state.fail) {
                      stopLoading(context);
                      showErrorDialog(context, state.failure!.type);
                    }
                  },
                  child: AnimatedButton(
                      loading: false,
                      loadColor: Colors.white,
                      height: 45.h,
                      width: 1000.w,
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          signUpBloc.add(SignUp(
                              email: email.text,
                              name: name.text,
                              password: password.text,
                              confirmPassword: confirmPassword.text));
                        }
                      },
                      child: Text(
                        "sign_up".tr(),
                        style: TextStyle(fontSize: 15.sp),
                      )),
                ),
                20.spaceHeight(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
