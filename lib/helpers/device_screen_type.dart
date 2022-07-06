// ignore_for_file: constant_identifier_names

// import 'package:flutter/material.dart';
part of responsive_helpers;

enum DeviceScreenType {
  Mobile,
  Tablet,
  Desktop,
}

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.width;

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }

  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}
