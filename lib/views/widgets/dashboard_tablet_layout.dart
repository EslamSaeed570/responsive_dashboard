import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/QuickInvoiceSection/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 25,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSection(),
                SizedBox(
                  height: 20,
                ),
                MyCardAndTransactionSection(),
                SizedBox(
                  height: 20,
                ),
                IncomeSection(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
