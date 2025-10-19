import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/QuickInvoiceSection/title_text_field.dart';
import 'package:responsive_dashboard/views/widgets/custom_button.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextfield(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextfield(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextfield(
                title: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextfield(
                title: 'Item mount',
                hint: 'mount',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: CustomButton(
                  text: 'Add More Details',
                  backGroundColor: Colors.white,
                  textColor: Color(0xff4EB7F2),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 50,
                child: CustomButton(
                  text: 'Send money',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
