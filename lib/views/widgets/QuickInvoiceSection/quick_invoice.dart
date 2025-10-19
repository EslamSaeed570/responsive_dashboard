import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/QuickInvoiceSection/custom_text_field.dart';
import 'package:responsive_dashboard/views/widgets/QuickInvoiceSection/latest_transaction.dart';
import 'package:responsive_dashboard/views/widgets/QuickInvoiceSection/quick_invoice_headrs.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeaders(),
          LatestTransaction(),
          CustomTextField(),
        ],
      ),
    );
  }
}
