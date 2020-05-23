/*  This is the camera scanner that scans the barcodes

 */

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraScanner extends StatefulWidget {
  @override
  _CameraScannerState createState() => _CameraScannerState();
}

class _CameraScannerState extends State<CameraScanner> {

  Permission _status = Permission.camera;
  PermissionStatus _permissionStatus;

  @override
  void initState() {
    super.initState();
    _listenForPermissionStatus();
    requestPermission(_status);
    callScanner();
    //goBackToPage();
  }

  void _listenForPermissionStatus() async {
    final status = await _status.status;
    setState(() {
      _permissionStatus = status;
    });
  }//end method

  void checkServiceStatus(BuildContext context, Permission permission) async {
    Scaffold.of(context).showSnackBar(SnackBar(
        content: Text((await permission.status).toString())));
  }//end method

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();
    setState(() {
      print(status);
      _permissionStatus = status;
    });
  }//end method

  void callScanner() async {
    var result = await BarcodeScanner.scan(options: ScanOptions(
      autoEnableFlash: false,
    ));
    print(result.type);
    print(result.format);
    print(result.hashCode);
  }//end method
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void goBackToPage () {
    Navigator.pop(context);
  }//end method
}//end class
