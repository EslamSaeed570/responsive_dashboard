import 'package:flutter/material.dart';

import 'package:responsive_dashboard/views/widgets/QuickInvoiceSection/all_expenses_and_quick_invoice_section.dart';

import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        const SizedBox(
          width: 25,
        ),
        const Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: AllExpensesAndQuickInvoiceSection(),
            ),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
            flex: 1,
            child: ListView(
              children: const [
                SizedBox(
                  height: 20,
                ),
                MyCardAndTransactionSection(),
                SizedBox(
                  height: 24,
                ),
                IncomeSection()
              ],
            )),
      ],
    );
  }
}
