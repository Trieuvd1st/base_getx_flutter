import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'base_controller.dart';

class BaseCommonWidgets implements _CommonWidgetsInterface {
  @override
  void hideDialog() {
    if (Get.isDialogOpen) Get.back();
  }

  @override
  void showLoadingDialog() {
    Get.dialog(
        Material(
          color: Colors.black26,
          child: Center(
            child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: CircularProgressIndicator()),
          ),
        ),
        barrierDismissible: false,
        name: "Loading Dialog");
  }

  //EXAMPLE
  @override
  void showDialogError(String message, Function onClick) {
    Get.defaultDialog(
        title: "Lỗi",
        content: Column(
          children: [
            Text(message),
            TextButton(
                onPressed: () {
                  onClick();
                },
                child: Text("Đóng"))
          ],
        ));
  }
}

abstract class _CommonWidgetsInterface {
  void showLoadingDialog();

  void hideDialog();

  void showDialogError(String message, Function onClick);
}
