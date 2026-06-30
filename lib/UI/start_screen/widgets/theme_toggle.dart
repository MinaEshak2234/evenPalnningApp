import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_assets/app_assets.dart';

class ThemeToggle extends StatefulWidget {
  const ThemeToggle({super.key});

  @override
  State<ThemeToggle> createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<ThemeToggle> {
  int currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch<int>.rolling(
      current: currentValue,
      values: [0, 1],
      onChanged: (newValue) {
        setState(() {
          currentValue = newValue;
        });
        ;
      },
      style: ToggleStyle(
        borderColor: Theme.of(context).colorScheme.primary,
        indicatorColor: Theme.of(context).colorScheme.primary,
      ),
      inactiveOpacity: 1,
      iconOpacity: 1,
      iconList: [
        SvgPicture.asset(
          AppAssets.sunIc,
          width: 35,
          height: 35,
          colorFilter: ColorFilter.mode(
            currentValue == 0
                ? Theme.of(context).colorScheme.onPrimaryContainer
                : Theme.of(context).colorScheme.primary,
            BlendMode.srcIn,
          ),
        ),
        SvgPicture.asset(
          AppAssets.moonIc,
          width: 35,
          height: 35,
          colorFilter: ColorFilter.mode(
            currentValue == 1
                ? Theme.of(context).colorScheme.onPrimaryContainer
                : Theme.of(context).colorScheme.primary,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}
