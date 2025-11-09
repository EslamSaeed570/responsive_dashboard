
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/range_option.dart';

class AllExpensessHeaders extends StatelessWidget {
  const AllExpensessHeaders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(
          'All Expensess',
          style: AppStyles.styleSemiBold20(context),
        ),
       const  Expanded(child: SizedBox()),
      const  RangeOption()
      ],
    );
  }
}
