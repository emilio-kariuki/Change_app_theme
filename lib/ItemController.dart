import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemController extends GetxController {
  var isDark = false.obs;

  void changeTheme(bool value) {
    if (value == true) {
      Get.changeTheme(ThemeData.dark().copyWith(
        backgroundColor: Colors.grey[900],
        primaryColor: Colors.grey[900],
        accentColor: Colors.grey[900],
        textTheme: const TextTheme(
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: Colors.grey[900],
        canvasColor: Colors.grey[900],
        cardColor: Colors.grey[900],
        dividerColor: Colors.grey[100],
        disabledColor: Colors.grey[200],
        errorColor: Colors.red,
        focusColor: Colors.grey[200],
        hoverColor: Colors.grey[400],
        highlightColor: Colors.grey[200],
        indicatorColor: Colors.grey[100],
        unselectedWidgetColor: Colors.grey[900],
        secondaryHeaderColor: Colors.grey[900],
      ));
    } else {
      Get.changeTheme(ThemeData.light().copyWith(
        backgroundColor: Colors.grey[100],
        primaryColor: Colors.grey[100],
        accentColor: Colors.grey[100],
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.grey[900],
          ),
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        canvasColor: Colors.grey[100],
        cardColor: Colors.grey[100],
        dividerColor: Colors.grey[900],
        disabledColor: Colors.grey[900],
        errorColor: Colors.red,
        focusColor: Colors.grey[800],
        hoverColor: Colors.grey[800],
        highlightColor: Colors.grey[800],
        indicatorColor: Colors.grey[800],
        unselectedWidgetColor: Colors.grey[100],
        secondaryHeaderColor: Colors.grey[100],
      ));
    }
  }
}
