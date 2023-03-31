import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/injection.dart';
import 'package:qit_flutter/presentation/auth/pages/sign_in_page.dart';
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
      FailureType.networkError: "no_network".tr(),
      FailureType.serverError: "server_error".tr()
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool en = context.locale == const Locale("en");
    return Scaffold(
        appBar: AppBar(
          title: Text("settings".tr()),
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
                              "sign_in".tr(),
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
                    title: Text("language".tr()),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      60.w.spaceWidth(),
                      GestureDetector(
                          onTap: () {
                            if (!en) {
                              context.setLocale(const Locale("en"));
                            }
                          },
                          child: SelectableButton(
                              text: "english".tr(), selected: en)),
                      20.w.spaceWidth(),
                      GestureDetector(
                          onTap: () {
                            if (en) {
                              context.setLocale(const Locale("ar"));
                            }
                          },
                          child: SelectableButton(
                              text: "arabic".tr(), selected: !en)),
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
                          "sign_out".tr(),
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
