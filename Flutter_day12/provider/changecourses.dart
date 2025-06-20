

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


class ChangeCourse extends ChangeNotifier {
  String sub = '';
  void changeSubject(String nsub) {
    sub = nsub;
    notifyListeners();
  }
}