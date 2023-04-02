import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart';

extension Dialogs on ScreenUtil {
  void showSuccessDialog(context, {String? msg}) {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: msg ?? "Success",
        title: "success".tr(),
        confirmBtnText: "ok".tr(),
        confirmBtnColor: Colors.green);
  }

  void showErrorDialog(context, FailureType type) {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: "error".tr(),
        confirmBtnText: "ok".tr(),
        text: errorMessages[type] ?? "unknown_error".tr(),
        confirmBtnColor: Theme.of(context).colorScheme.error);
  }
}
