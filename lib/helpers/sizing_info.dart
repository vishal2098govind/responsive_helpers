part of responsive_helpers;

class SizingInfo {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInfo({
    required this.deviceScreenType,
    required this.screenSize,
    required this.localWidgetSize,
  });

  @override
  String toString() =>
      'SizingInfo(deviceScreenType: $deviceScreenType, screenSize: $screenSize, localWidgetSize: $localWidgetSize)';
}
