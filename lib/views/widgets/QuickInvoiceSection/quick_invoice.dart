import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/QuickInvoiceSection/quick_invoice_headrs.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeaders(),
          SizedBox(
            height: 24,
          ),
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16,
          ),
        ],
      ),
    );
  }
}
