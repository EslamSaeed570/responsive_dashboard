import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'package:responsive_dashboard/views/widgets/QuickInvoiceSection/all_expenses_and_quick_invoice_section.dart';

import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

import 'package:responsive_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_headers.dart';

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
        Expanded(child: TransactionHistory())
      ],
    );
  }
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeaders(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16,
        ),
      ],
    );
  }
}
