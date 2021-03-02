import 'package:Binta/shared/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastMessage(String toastmessage) {
  Fluttertoast.showToast(
      msg: toastmessage,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 4,
      backgroundColor: colorWhite,
      textColor: colorPrimaryPurple,
      fontSize: 16.0);
}
