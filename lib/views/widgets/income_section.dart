import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
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
            children: [Expanded(child: IncomeChart(),),],
          ),
        )
      ],
    );
  }
}

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(getPieChartData());
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
      PieChartSectionData(value: 20, color: Colors.red),
      PieChartSectionData(value: 20, color: Colors.green),
      PieChartSectionData(value: 30, color: Colors.amber),
      PieChartSectionData(value: 40, color: Colors.blue),
    ]);
  }
}
