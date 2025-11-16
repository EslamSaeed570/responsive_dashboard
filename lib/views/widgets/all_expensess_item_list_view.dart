import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final items = const [
    AllExpensessItemModel(
        image: Assets.imagesMoneys,
        title: 'Balance',
        date: 'April 05',
        price: r"$0.65"),
    AllExpensessItemModel(
        image: Assets.imagesCardReceive,
        title: 'Income',
        date: 'April 05',
        price: r"$0.65"),
    AllExpensessItemModel(
        image: Assets.imagesCardSend,
        title: 'Expenses',
        date: 'April 05',
        price: r"$0.65"),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 4 : 0),
              child: AllExpensessItem(
                allExpensessItemModel: item,
                isActive: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
