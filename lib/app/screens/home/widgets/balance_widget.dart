import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [const Text('Wallet Balance'), 
            Row(
              children: [
                const Text('₦77,080.00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),
                ),
                const SizedBox(width: 8,),
                SvgPicture.asset('assets/svgs/visibility.svg')
              ],
            )],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration:  BoxDecoration(
              color: const Color(0xFF191919),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/svgs/add.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Fund wallet',
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
