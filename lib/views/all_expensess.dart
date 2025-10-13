import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

import 'package:responsive_dashboard/views/widgets/all_expensess_item.dart';
import 'package:responsive_dashboard/views/widgets/all_expensess_item_list_view.dart';

import 'package:responsive_dashboard/views/widgets/all_expensive_headrs.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensessHeaders(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemListView(),
        ],
      ),
    );
  }
}
