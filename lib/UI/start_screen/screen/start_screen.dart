import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently_app/UI/start_screen/widgets/toggle_button.dart';
import 'package:evently_app/core/app_assets/app_assets.dart';
import 'package:evently_app/core/app_assets/app_color.dart';
import 'package:evently_app/core/app_assets/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../core/reusable_componenets/customButton.dart';
import '../widgets/language_toggle.dart';
import '../widgets/theme_toggle.dart';

class StartScreen extends StatelessWidget {
  static const String routeName = "Start";

  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset(AppAssets.evenlyLogo)),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(AppAssets.onboarding_img_1))),
                  Gap(28),
                  Text(
                    "Personalize Your Experience",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Gap(28),
                  Text(
                    "Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Gap(28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Language",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      LanguageToggle(),
                    ],
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Theme",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ThemeToggle(),
                    ],
                  ),
                  const Gap(28),
                ],
              ),
            ),

            Custombutton(title:"Lets Start" ,
            onPressed: (){
              
            },),
          ],
        ),
      ),
    );
  }
}
