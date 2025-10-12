import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/all_expensess.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 25,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                child: AllExpensess(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
