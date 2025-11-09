import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        log(constraint.maxWidth.toString());
        if (constraint.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (constraint.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
