import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var name = ''.obs;
  var mail = ''.obs;

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController mailCtrl = TextEditingController();

  onPressed() {
    name(nameCtrl.text);
    mail(mailCtrl.text);
  }

  @override
  void onClose() {
    nameCtrl.dispose();
    mailCtrl.dispose();
    super.onClose();
  }
}
