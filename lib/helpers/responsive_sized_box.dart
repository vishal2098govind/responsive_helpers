part of responsive_helpers;

class ResponsiveSizedBox extends StatelessWidget {
  const ResponsiveSizedBox({
    Key? key,
    this.mobileHeight,
    this.mobileWidth,
    this.desktopHeight,
    this.desktopWidth,
  }) : super(key: key);
  final double? mobileHeight;
  final double? mobileWidth;
  final double? desktopHeight;
  final double? desktopWidth;

  @override
  Widget build(BuildContext context) {
    return ResponsiveScreenLayout(
      mobile: SizedBox(height: mobileHeight, width: mobileWidth),
      desktop: SizedBox(height: desktopHeight, width: desktopWidth),
    );
  }
}
