import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/app_assets/app_assets.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isArabic = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              setState(() {
                isArabic = false ;
              });
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: !isArabic
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
              child: SvgPicture.asset(AppAssets.amIc, height: 35, width: 35),
            ),
          ),
          Gap(16),
          InkWell(
            onTap: (){
              setState(() {
                isArabic = true ;
              });
            },
            child: CircleAvatar(
              backgroundColor: isArabic
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
              child: SvgPicture.asset(AppAssets.egIc, height: 35, width: 35),
            ),
          ),
        ],
      ),
    );
  }
}
