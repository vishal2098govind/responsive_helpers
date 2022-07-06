part of responsive_helpers;

class ResponsiveOrientationLayout extends StatelessWidget {
  const ResponsiveOrientationLayout({
    Key? key,
    this.landscape,
    required this.portrait,
  }) : super(key: key);
  final Widget? landscape;
  final Widget portrait;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape) {
      return landscape ?? portrait;
    }

    return portrait;
  }
}
