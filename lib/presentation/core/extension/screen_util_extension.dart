import 'package:quickalert/quickalert.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart';

extension Dialogs on ScreenUtil {
  void showSuccessDialog(context, {String? msg}) {
    QuickAlert.show(
        context: context, type: QuickAlertType.success, text: msg ?? "Success");
  }

  void showErrorDialog(context, FailureType type) {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        text: errorMessages[type] ?? "Error");
  }
}
