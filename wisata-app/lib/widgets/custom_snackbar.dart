import 'package:flutter/material.dart';
import 'package:wisata_app/constants.dart';

enum SnackbarType {
  success,
  error,
  warning,
  info,
}

class CustomSnackbar {
  static void show(ScaffoldMessengerState scaffoldMessengerState,
      String message, SnackbarType type,
      {Duration duration = const Duration(seconds: 3)}) {
    Color backgroundColor;
    Color iconColor;
    IconData iconData;

    switch (type) {
      case SnackbarType.success:
        backgroundColor = successColor;
        iconColor = Colors.white;
        iconData = Icons.check_circle;
        break;
      case SnackbarType.error:
        backgroundColor = dangerColor;
        iconColor = Colors.white;
        iconData = Icons.error;
        break;
      case SnackbarType.warning:
        backgroundColor = warningColor;
        iconColor = Colors.black;
        iconData = Icons.warning;
        break;
      case SnackbarType.info:
      default:
        backgroundColor = infoColor;
        iconColor = Colors.white;
        iconData = Icons.info;
        break;
    }

    scaffoldMessengerState.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(iconData, color: iconColor),
            const SizedBox(width: 8.0),
            Flexible(
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        duration: duration,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      ),
    );
  }
}
