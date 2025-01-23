import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentTransactionWidget extends StatelessWidget {
  const RecentTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
    //  SingleChildScrollView(
    //    child: Column(
    //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: _recentTransactionItemList.map((recentTransaction){
    //       return Padding(
    //         padding: const EdgeInsets.only(bottom: 30),
    //         child: RecentTransactionItem(
    //           recentTransactionIcon: recentTransaction.recentTransactionIcon,
    //           recentTransactionName: recentTransaction.recentTransactionName,
    //           amount: recentTransaction.amount,
    //           isCredit: recentTransaction.isCredit,
    //           date: recentTransaction.date,
    //         ),
    //       );
    //     }).toList(),
    //        ),
    //  );
    ListView.builder(
      itemCount: _recentTransactionItemList.length,
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 0),
      // physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index){
        final recentTransaction = _recentTransactionItemList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: RecentTransactionItem(
              recentTransactionIcon: recentTransaction.recentTransactionIcon,
              recentTransactionName: recentTransaction.recentTransactionName,
              amount: recentTransaction.amount,
              isCredit: recentTransaction.isCredit,
              date: recentTransaction.date,
            ),
        );
      }
      );
  }

 


}

 final _recentTransactionItemList = [
  
  ItemModel(
    recentTransactionName: 'Fund Wallet',
    amount: '30,000.00',
    date: 'Today, 9:00am',
    isCredit: true  
  ),

  ItemModel(
    recentTransactionName: 'Fund Wallet',
    amount: '30,000.00',
    date: 'Today, 9:00am',
    isCredit: true  
  ),

  ItemModel(
    recentTransactionName: 'Airtime Purchase',
    amount: '2,000.00',
    date: 'Today, 9:00am',
    isCredit: false  
  ),

  ItemModel(
    recentTransactionName: 'Airtime Purchase',
    amount: '2,000.00',
    date: 'Today, 9:00am',
    isCredit: false  
  ),

  ItemModel(
    recentTransactionName: 'Airtime Purchase',
    amount: '5,000.00',
    date: 'Today, 9:00am',
    isCredit: false  
  ),

  ItemModel(
    recentTransactionName: 'Fund Wallet',
    amount: '20,000.00',
    date: 'Today, 9:00am',
    isCredit: true  
  ),

  ItemModel(
    recentTransactionName: 'Data Purchase',
    amount: '10,000.00',
    date: 'Today, 9:00am',
    isCredit: true  
  ),

  ItemModel(
    recentTransactionName: 'Fund Wallet',
    amount: '30,000.00',
    date: 'Today, 9:00am',
    isCredit: true  
  ),
  
  ItemModel(
    recentTransactionName: 'Fund Wallet',
    amount: '30,000.00',
    date: 'Today, 9:00am',
    isCredit: true  
  ),
  ItemModel(
    recentTransactionName: 'Fund Wallet',
    amount: '30,000.00',
    date: 'Today, 9:00am',
    isCredit: true  
  ),
  ItemModel(
    recentTransactionName: 'Fund Wallet',
    amount: '30,000.00',
    date: 'Today, 9:00am',
    isCredit: true  
  ),
 


  ];

class ItemModel{
  ItemModel({this.recentTransactionIcon, this.date, this.amount, this.isCredit, this.recentTransactionName});
  final String?  recentTransactionIcon;
  final String? recentTransactionName;
  final String? date;
  final String? amount;
  final bool? isCredit;

}

class RecentTransactionItem extends StatelessWidget {
  const RecentTransactionItem({super.key, this.recentTransactionIcon, this.amount, this.isCredit, this.recentTransactionName, this.date});
  final String? recentTransactionIcon;
  final String? recentTransactionName;
  final String? date;
  final String? amount;
  final bool? isCredit;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color:  Colors.grey.shade100,
                shape: BoxShape.circle
              ),
              child: SvgPicture.asset(isCredit == true ? 'assets/svgs/credit.svg' : 'assets/svgs/debit.svg')),
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(recentTransactionName!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14
                ),),
                Text(date!,
                style:  TextStyle(
                  color: Colors.grey.shade700
                ),)
            
              ],
            ),
          ],
        ),

        Text(isCredit == true ? '+$amount' : '-$amount',
        style: TextStyle(
          color: isCredit == true ? Colors.green : Colors.red,
           fontWeight: FontWeight.bold,
                  fontSize: 14

        ),)

        


      ],

    );
  }
}