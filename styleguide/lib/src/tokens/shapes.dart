import 'package:flutter/material.dart';
import 'package:styleguide/src/tokens/dimensions.dart';

abstract class AppShapes {
  static const circularBorder04 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(Dimens.size04)),
  );
  static const circularBorder12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(Dimens.size12)),
  );
  static const circularBorder16 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(Dimens.size16)),
  );
  static const circularBorderTop16 = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(Dimens.size16)),
  );
}
