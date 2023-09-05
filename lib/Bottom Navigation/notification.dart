import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

void showNotificationAlert(BuildContext context) {
  QuickAlert.show(
    context: context,
    type: QuickAlertType.warning,
    confirmBtnText: 'Bed # 01',
    text: 'Analyze the live reports and\nreach at first priority',
    title: 'Emergency Ward',
  );
}
