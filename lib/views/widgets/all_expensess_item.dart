import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expensess_item_headers.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({super.key, required this.allExpensessItemModel});
  final AllExpensessItemModel allExpensessItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeaders(
            image: allExpensessItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleReguler14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
