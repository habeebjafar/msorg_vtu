import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              child: Image.asset('assets/images/prof_img.png'),
            ),
            const SizedBox(width: 5,),
             Column(
              children: [
                const Text('Hello, Lilian 👋',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700
                ),),
                Text('Good Morning!',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7)
                ),)
              ],
            )
          ],
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xFF890402),
                shape: BoxShape.circle
              ),
              child: SvgPicture.asset('assets/svgs/user-group.svg'),
            ),

            const SizedBox(width: 5,),

            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xFF890402),
                shape: BoxShape.circle
              ),
              child: SvgPicture.asset('assets/svgs/notification.svg'),
            ),
          ],
        )
      ],
    );
  }
}