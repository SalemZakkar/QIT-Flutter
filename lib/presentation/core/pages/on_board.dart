import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/presentation/core/pages/splash.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:salem_package/salem_package.dart';

import '../widgets/selectable_button.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  @override
  Widget build(BuildContext context) {
    bool en = context.locale == const Locale("en");
    return Scaffold(
        body: Container(
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(
                  Icons.language,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  "language".tr(),
                  style:
                      TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w300),
                ),
              ),
              50.h.spaceHeight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        if (!en) {
                          context.setLocale(const Locale("en"));
                        }
                      },
                      child:
                          SelectableButton(text: "english".tr(), selected: en)),
                  20.w.spaceWidth(),
                  GestureDetector(
                      onTap: () {
                        if (en) {
                          context.setLocale(const Locale("ar"));
                        }
                      },
                      child:
                          SelectableButton(text: "arabic".tr(), selected: !en)),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedButton(
            loading: false,
            height: 45,
            width: 250.w,
            onPressed: () {
              context.router.navigateTo(context, SplashPage.routeName);
            },
            child: Text(
              "continue".tr(),
              style: TextStyle(fontSize: 18.sp),
            ),
          ),
        ));
  }
}
