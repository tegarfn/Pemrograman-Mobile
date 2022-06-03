import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckboxController extends GetxController {
  var include = false.obs;

  onPressed(bool? value) {
    include(value);
  }
}
