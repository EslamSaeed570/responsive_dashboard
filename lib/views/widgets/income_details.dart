
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_details_model.dart';
import 'package:responsive_dashboard/views/widgets/income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeItemDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', percent: '40%'),
    IncomeItemDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', percent: '25%'),
    IncomeItemDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', percent: '20%'),
    IncomeItemDetailsModel(
        color: Color(0xffE2DECD), title: 'Other', percent: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (conntext, index) {
        return IncomeItemDetails(itemDetailsModel: items[index]);
      },
    );
  }
}

