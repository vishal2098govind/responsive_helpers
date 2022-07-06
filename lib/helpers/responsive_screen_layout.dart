part of responsive_helpers;

class ResponsiveScreenLayout extends StatelessWidget {
  const ResponsiveScreenLayout({
    Key? key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.handleSizeInfo,
  }) : super(key: key);
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Function(SizingInfo sizingInfo)? handleSizeInfo;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        if (sizingInfo.deviceScreenType == DeviceScreenType.Tablet) {
          return tablet ?? mobile;
        }
        if (sizingInfo.deviceScreenType == DeviceScreenType.Desktop) {
          return desktop ?? mobile;
        }

        return mobile;
      },
    );
  }
}
