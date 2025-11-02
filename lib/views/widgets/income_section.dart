import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_section_headers.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IncomeSectionHeaders(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ),
      ],
    );
  }
}

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

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.itemDetailsModel});
  final IncomeItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleReguler16,
      ),
      trailing: Text(
        itemDetailsModel.percent,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
