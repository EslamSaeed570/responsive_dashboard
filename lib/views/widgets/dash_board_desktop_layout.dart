import 'package:flutter/material.dart';

import 'package:responsive_dashboard/views/widgets/QuickInvoiceSection/all_expenses_and_quick_invoice_section.dart';

import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/my_card.dart';

import 'package:responsive_dashboard/views/widgets/transaction_history.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 25,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(child: TransactionHistory()),
      ],
    );
  }
}
