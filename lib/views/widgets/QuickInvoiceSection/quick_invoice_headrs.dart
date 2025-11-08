
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeaders extends StatelessWidget {
  const QuickInvoiceHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
              shape: OvalBorder(), color: Color(0xffFAFAFA)),
          child: const Center(
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
