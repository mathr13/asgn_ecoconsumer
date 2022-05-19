import 'package:flutter/material.dart';

abstract class TextStyles {

  static const TextStyle secondaryHeadlineStyle = TextStyle(
    color: Colors.white,
    fontSize: Sizes.secondaryHeadlineSize
  );

}

abstract class Sizes {

  static const double primaryHeadlineSize = 40;
  static const double secondaryHeadlineSize = 32;

}

abstract class Paddings {

  static const EdgeInsets padding1 = EdgeInsets.all(16);

}