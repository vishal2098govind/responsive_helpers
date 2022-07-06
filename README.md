<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Helper widgets and functions for responsive design

## Features

- responsiveTextStyle
- responsiveGridCount
- responsiveCallBack
- ResponsiveOrientationLayout
- ResponsiveScreenLayout
- DeviceScreenType
  - Mobile
  - Tablet (deviceWidth > 600)
  - Desktop (deviceWidth > 950)
- SizingInfo

## Usage

```dart
Text(
 'Responsive Text',
    style: responsiveTextStyle(
        context,
        mobile: kTextStyleH03Bold,
        tablet: kTextStyleH01Bold,
        desktop: kTextStyleDisplay01Bold,
    ),
)
```

```dart
responsiveCallbacks(
    context,
    mobile: () {
    context.go(
        '/${AppRoute.loads.name}/${AppRoute.addLoad.name}',
    );
    },
    desktop: () {
    ref
        .read(navigationServiceProvider)
        .pushNamed('/${AppRoute.addLoad.name}');
    },
);
```
