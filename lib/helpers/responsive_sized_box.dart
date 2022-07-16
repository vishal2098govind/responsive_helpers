part of responsive_helpers;

class ResponsiveSizedBox extends StatelessWidget {
  const ResponsiveSizedBox({
    Key? key,
    this.crossAxisGap,
    this.mainAxisGap,
  }) : super(key: key);
  final double? crossAxisGap;
  final double? mainAxisGap;

  @override
  Widget build(BuildContext context) {
    return ResponsiveScreenLayout(
      mobile: SizedBox(
        height: mainAxisGap,
        width: crossAxisGap,
      ),
      desktop: SizedBox(
        height: crossAxisGap,
        width: mainAxisGap,
      ),
    );
  }
}
