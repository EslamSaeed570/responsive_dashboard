
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_section_headers.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IncomeSectionHeaders(),
      ],
    );
  }
}
