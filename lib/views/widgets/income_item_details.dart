import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.itemDetailsModel});
  final IncomeItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListTile(
        leading: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: itemDetailsModel.color,
            shape: const OvalBorder(),
          ),
        ),
        title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            itemDetailsModel.title,
            style: AppStyles.styleReguler16(context),
          ),
        ),
        trailing: Text(
          itemDetailsModel.percent,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
