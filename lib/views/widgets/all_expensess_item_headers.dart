import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class AllExpensessItemHeaders extends StatelessWidget {
  const AllExpensessItemHeaders({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xffFAFAFA),
          ),
          child: Center(
            child: SvgPicture.asset(image),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
