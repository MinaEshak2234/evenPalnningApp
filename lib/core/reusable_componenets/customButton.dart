import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String title;
  final void Function() onPressed ;
  const Custombutton({super.key,required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      child: Text(title, style: Theme.of(context).textTheme.labelLarge),
    );
  }
}
