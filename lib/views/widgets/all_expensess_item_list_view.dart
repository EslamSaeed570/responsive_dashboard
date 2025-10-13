import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatelessWidget {
  const AllExpensessItemListView({super.key});
  static const items = [
    AllExpensessItemModel(
        image: Assets.imagesCardReceive,
        title: 'Balance',
        date: 'April 05',
        price: r"$0.65"),
    AllExpensessItemModel(
        image: Assets.imagesCardReceive,
        title: 'Income',
        date: 'April 05',
        price: r"$0.65"),
    AllExpensessItemModel(
        image: Assets.imagesCardReceive,
        title: 'Balance',
        date: 'April 05',
        price: r"$0.65"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: AllExpensessItem(allExpensessItemModel: item),
            ),
          );
        } else {
          return Expanded(child: AllExpensessItem(allExpensessItemModel: item));
        }
      }).toList(),
      // children: items
      //     .map((e) =>
      //         Expanded(child: AllExpensessItem(allExpensessItemModel: e)))
      //     .toList(),
    );
  }
}
