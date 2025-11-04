import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: MediaQuery.of(context).size.width < 1150 ? 2 / 1 : 1,
        child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          touchCallback: (p0, p1) {
            currentIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
              showTitle: false,
              value: 40,
              color: const Color(0xff208CC8),
              radius: currentIndex == 0 ? 50 : 40),
          PieChartSectionData(
              showTitle: false,
              value: 25,
              color: const Color(0xff4EB7F2),
              radius: currentIndex == 1 ? 50 : 40),
          PieChartSectionData(
              showTitle: false,
              value: 20,
              color: const Color(0xff064061),
              radius: currentIndex == 2 ? 50 : 40),
          PieChartSectionData(
              showTitle: false,
              value: 22,
              color: const Color(0xffE2DECD),
              radius: currentIndex == 3 ? 50 : 40),
        ]);
  }
}
