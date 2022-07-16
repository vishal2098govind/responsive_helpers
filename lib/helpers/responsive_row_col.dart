import 'package:flutter/material.dart';
import 'package:responsive_helpers/responsive_helpers.dart';

class ResponsiveRowCol extends StatelessWidget {
  const ResponsiveRowCol({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ResponsiveScreenLayout(
      mobile: Column(children: children),
      desktop: Row(children: children),
    );
  }
}
