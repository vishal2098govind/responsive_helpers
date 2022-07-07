part of responsive_helpers;

TextStyle responsiveTextStyle(
  BuildContext context, {
  required TextStyle mobile,
  TextStyle? tablet,
  TextStyle? desktop,
}) {
  final mediaQuery = MediaQuery.of(context);
  final deviceScreenType = getDeviceType(mediaQuery);
  if (deviceScreenType == DeviceScreenType.Tablet) {
    return tablet ?? mobile;
  }
  if (deviceScreenType == DeviceScreenType.Desktop) {
    return desktop ?? mobile;
  }

  return mobile;
}

T responsiveValue<T>(
  BuildContext context, {
  required T mobile,
  T? tablet,
  T? desktop,
}) {
  final mediaQuery = MediaQuery.of(context);
  final deviceScreenType = getDeviceType(mediaQuery);
  if (deviceScreenType == DeviceScreenType.Tablet) {
    return tablet ?? mobile;
  }
  if (deviceScreenType == DeviceScreenType.Desktop) {
    return desktop ?? mobile;
  }

  return mobile;
}

void responsiveCallBack(
  BuildContext context, {
  required void Function() mobile,
  void Function()? tablet,
  void Function()? desktop,
}) {
  final mediaQuery = MediaQuery.of(context);
  final deviceScreenType = getDeviceType(mediaQuery);
  if (deviceScreenType == DeviceScreenType.Tablet) {
    if (tablet != null) {
      return tablet();
    }
  }
  if (deviceScreenType == DeviceScreenType.Desktop) {
    if (desktop != null) return desktop();
  }

  return mobile();
}
