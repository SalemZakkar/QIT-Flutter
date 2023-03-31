import 'package:flutter/material.dart';
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

import '../../../blocs/sign_up_bloc/sign_up_bloc.dart';

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
      FailureType.serverError: "Server Error",
      FailureType.invalidArguments: "account exists",
      FailureType.networkError: "no network",
    };
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
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
                  decoration: const InputDecoration(hintText: 'Email'),
                  validator: (data) {
                    if (data?.isEmpty == true || !Validator.checkEmail(data!)) {
                      return "Email invalid";
                    }
                    return null;
                  },
                ),
                20.spaceHeight(),
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(hintText: 'Username'),
                  validator: (data) {
                    if (data?.isEmpty == true || !Validator.checkName(data!)) {
                      return "name invalid";
                    }
                    return null;
                  },
                ),
                20.spaceHeight(),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(hintText: 'Password'),
                  validator: (data) {
                    if (password.text != confirmPassword.text) {
                      return "Passwords is different";
                    }
                    if (data?.isEmpty == true ||
                        !Validator.checkPassword(data!)) {
                      return "Password invalid";
                    }
                    return null;
                  },
                ),
                20.spaceHeight(),
                TextFormField(
                  controller: confirmPassword,
                  obscureText: true,
                  decoration:
                      const InputDecoration(hintText: 'Confirm password'),
                  validator: (data) {
                    if (password.text != confirmPassword.text) {
                      return "Passwords is different";
                    }
                    if (data?.isEmpty == true ||
                        !Validator.checkPassword(data!)) {
                      return "Password invalid";
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
                        "Sign Up",
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
