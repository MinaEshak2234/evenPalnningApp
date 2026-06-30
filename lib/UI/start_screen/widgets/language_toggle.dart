import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_assets/app_assets.dart';

class LanguageToggle extends StatefulWidget {
  const LanguageToggle({super.key});

  @override
  State<LanguageToggle> createState() => _LanguageToggleState();
}

class _LanguageToggleState extends State<LanguageToggle> {
  int currentValue = 0 ;
  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch<int>.rolling(

      current: currentValue,
      values: [0, 1],
      onChanged: (newValue) {

        setState(() {
          currentValue = newValue;
        });;
      },
      style: ToggleStyle(borderColor: Theme
          .of(context)
          .colorScheme
          .primary,
          indicatorColor: Theme
              .of(context)
              .colorScheme
              .primary),
      inactiveOpacity: 1,
      iconOpacity: 1,
      iconList: [

        SvgPicture.asset(
          AppAssets.amIc,
          width: 35,
          height: 35,
        ),
        SvgPicture.asset(
          AppAssets.egIc,
          width: 35,
          height: 35,
        ),
      ],
    );
  }
}
