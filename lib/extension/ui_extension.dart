import 'package:fuck_utils/fuck_utils.dart';

extension FuckUIExtension on dynamic {
  Future<T> withLoading<T>(Future<T> Function() action, {String? msg ,bool dismissOnTouch = false,
    bool dismissOnBackPressed = false}) async{
    try{
      DialogUtil.showLoading(msg: msg, dismissOnTouch: dismissOnTouch, dismissOnBackPressed: dismissOnBackPressed);
      return await action();
    }finally{
      await DialogUtil.dismissLoading();
    }
  }
}