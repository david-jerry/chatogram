import 'package:chatogram/theme/size.dart';
import 'package:flutter/material.dart';

///Height Widgets
///SizeConfig.blockSizeVertical *
SizedBox hSizedBox2 = const SizedBox(
  height: AppSizes.p2,
);

SizedBox hSizedBox4 = const SizedBox(
  height: AppSizes.p4,
);
SizedBox hSizedBox6 = const SizedBox(
  height: AppSizes.p6,
);
SizedBox hSizedBox8 = const SizedBox(
  height: AppSizes.p8,
);
SizedBox hSizedBox10 = const SizedBox(
  height: AppSizes.p10,
);
SizedBox hSizedBox14 = const SizedBox(
  height: AppSizes.p14,
);

/// Width Widgets
///  SizeConfig.blockSizeHorizontal *
SizedBox wSizedBox2 = const SizedBox(
  width: AppSizes.p2,
);
SizedBox wSizedBox4 = const SizedBox(
  width: AppSizes.p4,
);
SizedBox wSizedBox6 = const SizedBox(
  width: AppSizes.p6,
);
SizedBox wSizedBox8 = const SizedBox(
  width: AppSizes.p8,
);
SizedBox wSizedBox10 = const SizedBox(
  width: AppSizes.p10,
);
SizedBox wSizedBox14 = const SizedBox(
  width: AppSizes.p14,
);

Widget addVerticalSpace(double height) => SizedBox(height: height);

Widget addHorizontalSpace(double width) => SizedBox(width: width);
