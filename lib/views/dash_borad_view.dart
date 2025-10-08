import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout_widget.dart';

class DashBoradView extends StatelessWidget {
  const DashBoradView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const SizedBox(),
      ),
    );
  }
}
