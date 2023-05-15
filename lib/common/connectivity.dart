import 'package:chatogram/common/alert.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

Future<bool> checkConnectivity(BuildContext context) async {
  // Check network connectivity
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    // ignore: use_build_context_synchronously
    showErrorMessage(context,
        'No network connection. Please try checking if you have an active data plan');
    return false;
  }

  if (connectivityResult == ConnectivityResult.vpn) {
    // ignore: use_build_context_synchronously
    showErrorMessage(
        context, 'Your account will be suspended if you use a vpn');
    return false;
  }

  return true;
}
