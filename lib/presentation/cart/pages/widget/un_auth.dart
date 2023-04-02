import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:salem_package/extensions/num_extension.dart';

import '../../../auth/pages/sign_in_page.dart';

class UnAuthWidget extends StatelessWidget {
  const UnAuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "unAuth".tr(),
          style: TextStyle(fontSize: 18.sp),
        ),
        20.h.spaceHeight(),
        GestureDetector(
          onTap: () => context.router
              .navigateTo(context, "${SignInPage.routeName}/true"),
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
        )
      ],
    );
  }
}
