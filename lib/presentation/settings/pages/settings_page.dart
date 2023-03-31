import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/injection.dart';
import 'package:qit_flutter/presentation/auth/sign_in/page/sign_in_page.dart';
import 'package:qit_flutter/presentation/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:qit_flutter/presentation/core/extension/screen_util_extension.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/settings/blocs/sign_out_bloc/sign_out_bloc.dart';
import 'package:qit_flutter/presentation/settings/pages/selectable_button.dart';
import 'package:qit_flutter/presentation/settings/pages/user_card.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart';
import 'package:salem_package/salem_package.dart' as sz;

class SettingsPage extends StatefulWidget {
  static const String routeName = "/settings";
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with sz.ScreenUtil {
  bool auth = getIt<AuthBloc>().state is Authenticated;
  var bloc = getIt<SignOutBloc>();
  @override
  void initState() {
    errorMessages = {
      FailureType.networkError: "no network",
      FailureType.serverError: "Server Error"
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is Authenticated) {
                  setState(() {
                    auth = true;
                  });
                } else {
                  setState(() {
                    auth = false;
                  });
                }
              },
            ),
            BlocListener<SignOutBloc, BaseState>(
              bloc: bloc,
              listener: (context, state) {
                if (state.progress) {
                  showLoading(context);
                } else {
                  stopLoading(context);
                }
                if (state.fail) {
                  showErrorDialog(context, state.failure!.type);
                }
              },
            ),
          ],
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            constraints: const BoxConstraints.expand(),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  auth
                      ? const UserCard()
                      : GestureDetector(
                          onTap: () => context.router
                              .navigateTo(context, SignInPage.routeName),
                          child: Container(
                            width: 1000.w,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.white),
                            ),
                          ),
                        ),
                  20.h.spaceHeight(),
                  ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: const Text("Language"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      60.w.spaceWidth(),
                      const SelectableButton(text: "English", selected: true),
                      20.w.spaceWidth(),
                      const SelectableButton(text: "Arabic", selected: false),
                    ],
                  ),
                  100.h.spaceHeight(),
                  Visibility(
                    visible: auth,
                    child: GestureDetector(
                      onTap: () {
                        bloc.add(const SignOut());
                      },
                      child: Container(
                        width: 1000.w,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.error,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign Out",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
