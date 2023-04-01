import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salem_package/extensions/num_extension.dart';

class HomeErrorWidget extends StatelessWidget {
  final String error;
  final VoidCallback voidCallback;

  const HomeErrorWidget(
      {Key? key, required this.error, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(error,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontSize: 17.sp)),
                  20.h.spaceHeight(),
                  InkWell(
                    onTap: () {
                      voidCallback.call();
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
