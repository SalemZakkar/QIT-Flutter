import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:qit_flutter/presentation/auth/signup/pages/signup_page/signup_page.dart';
import 'package:qit_flutter/presentation/core/extension/screen_util_extension.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/core/sources/assets.gen.dart';
import 'package:qit_flutter/presentation/home/pages/home_page.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart' as sz;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/auth/source/local/local_data_source.dart';
import '../../../../injection.dart';
import '../../../core/utils/validator.dart';

class SignInPage extends StatefulWidget {
  static const String routeName = "/signIn";
  const SignInPage({Key? key}) : super(key: key);

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
      FailureType.networkError: "No Network",
      FailureType.invalidArguments: "error email or password",
      FailureType.serverError: "server error",
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
              context.router.navigateTo(context, HomePage.routeName , clearStack: true);
            }
            if (state.fail) {
              showErrorDialog(context, state.failure!.type);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            constraints: const BoxConstraints.expand(),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: globalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(Assets.images.signin.path, width: 200.w),
                    80.h.spaceHeight(),
                    TextFormField(
                      controller: email,
                      decoration: const InputDecoration(hintText: "Email"),
                      validator: (data) {
                        if (data?.isEmpty == true ||
                            !Validator.checkEmail(data!)) {
                          return "Email invalid";
                        }
                        return null;
                      },
                    ),
                    20.h.spaceHeight(),
                    TextFormField(
                      controller: password,
                      decoration: const InputDecoration(hintText: "password"),
                      obscureText: true,
                      validator: (data) {
                        if (data?.isEmpty == true) {
                          return "Password invalid";
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
                        child: const Text("Sign In")),
                    15.h.spaceHeight(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            style: Theme.of(context).textButtonTheme.style,
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SignUpPage.routeName);
                            },
                            child: const Text(
                              "Don't have account ?",
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
