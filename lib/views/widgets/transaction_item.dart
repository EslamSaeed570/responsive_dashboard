import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(transactionHistoryModel.subTitle,
            style: AppStyles.styleReguler16(context)),
        trailing: Text(transactionHistoryModel.subTitle,
            style: AppStyles.styleSemiBold20(context).copyWith(
                color: transactionHistoryModel.isWithdrawal
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B))),
      ),
    );
  }
}

class TransactionHistoryListViewItem extends StatelessWidget {
  const TransactionHistoryListViewItem({super.key});
  static const items = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        subTitle: '13 Apr, 2022 ',
        mount: r'$20,129',
        isWithdrawal: true),
    TransactionHistoryModel(
        title: 'Landing Page project',
        subTitle: '13 Apr, 2022 ',
        mount: r'$$2,000',
        isWithdrawal: false),
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        subTitle: '13 Apr, 2022 ',
        mount: r'$20,000',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionItem(transactionHistoryModel: items[index]);
        });
  }
}
