import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_details.dart';
import 'package:responsive_dashboard/views/widgets/income_section_headers.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          IncomeSectionHeaders(),
          SizedBox(
            height: 15,
          ),
          IncomeDetailsBody(),
        ],
      ),
    );
  }
}

class IncomeDetailsBody extends StatelessWidget {
  const IncomeDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: IncomeChart(),
        ),
        Expanded(flex: 2, child: IncomeDetails()),
      ],
    );
  }
}
