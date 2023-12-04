import 'package:flutter/material.dart';

extension DynamicExtensions on BuildContext {
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
}

extension PaddingExtensions on BuildContext {
  EdgeInsets get paddingPageSymetricH => EdgeInsets.symmetric(
        horizontal: dynamicWidth(0.1),
      );
  EdgeInsets get paddingPageSymetricV => EdgeInsets.symmetric(
        vertical: dynamicWidth(0.1),
      );
  EdgeInsets get paddingTop => EdgeInsets.only(top: dynamicHeight(0.05));
  EdgeInsets get paddingBottom => EdgeInsets.only(bottom: dynamicHeight(0.05));
  EdgeInsets get paddingLeft => EdgeInsets.only(left: dynamicWidth(0.05));
  EdgeInsets get paddingRight => EdgeInsets.only(right: dynamicWidth(0.05));
  EdgeInsets get paddingAll => EdgeInsets.all(dynamicWidth(0.05));
}

extension ThemeExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
}
