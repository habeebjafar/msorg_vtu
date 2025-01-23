import 'package:flutter/material.dart';

import '../widgets/balance_widget.dart';
import '../widgets/recent_trans_view_all_widget.dart';
import '../widgets/recent_transactions.dart';
import '../widgets/service_widget.dart';
import '../widgets/top_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFFA60B09) 

          ),
          child: const Column(
            children: [
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: TopWidget(),
              ),
              SizedBox(height: 20,),
              BalanceWidget(),

            ],
          ),
        ),
        Positioned(
          top: 215,
          right: 0,
          left: 0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(32))
            ),
            child: Column(
              children: [
                const ServiceWidget(),
                const SizedBox(height: 20,),
                Divider(color: Colors.red.withOpacity(0.1),),
                const SizedBox(height: 15,),
                const RecentTransViewAllWidget(),
                const SizedBox(height: 25,),
                const Expanded(child: RecentTransactionWidget())
              ],
            ),
          ),
        )
      ],
      
    );
  }
}