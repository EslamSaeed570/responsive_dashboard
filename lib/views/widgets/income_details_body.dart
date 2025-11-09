import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_details.dart';

class IncomeDetailsBody extends StatelessWidget {
  const IncomeDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  
    const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: IncomeChart(),
        ),
        Expanded(child: IncomeDetails()),
      ],
    );
  }
}
