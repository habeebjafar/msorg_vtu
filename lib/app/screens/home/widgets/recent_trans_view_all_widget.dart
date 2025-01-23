import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentTransViewAllWidget extends StatelessWidget {
  const RecentTransViewAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Recent Transactions',
        style: TextStyle(
          color: Color(0xFFA60B09) ,
          fontWeight: FontWeight.w700
        ),),
        Row(
          children: [
            const Text('View all',
            style: TextStyle(
              color: Color(0xFFA60B09) 
            ),),
            SizedBox(width: 2,),
            SvgPicture.asset('assets/svgs/angle-double-right.svg'),
          ],
        )
      ],
    );
  }
}