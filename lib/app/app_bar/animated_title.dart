import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:habit_now_clone/providers/navigation_provider.dart';
import 'package:provider/provider.dart';
import 'package:styleguide/style.dart';

class AnimatedTitle extends StatelessWidget {
  const AnimatedTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final title = context.watch<NavigationProvider>().title;
    return AnimatedTextKit(
      key: ValueKey<String>(title),
      isRepeatingAnimation: false,
      animatedTexts: [
        RotateAnimatedText(
          title,
          rotateOut: false,
          alignment: Alignment.centerLeft,
          duration: AppTimes.millis400,
          textStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
