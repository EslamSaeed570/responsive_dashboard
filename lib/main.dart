import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dash_borad_view.dart';

void main() {
  runApp(const ResponsiveDashBorad());
}

class ResponsiveDashBorad extends StatelessWidget {
  const ResponsiveDashBorad({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoradView(),
    );
  }
}
