import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
AndroidDeviceInfo androidDeviceInfo;

class Home extends StatelessWidget {
  void getAndroidDeviceInfo() async {
    androidDeviceInfo = await deviceInfoPlugin.androidInfo;
    print('heelo');
    print(androidDeviceInfo.model);
  }

  @override
  Widget build(BuildContext context) {
    getAndroidDeviceInfo();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
