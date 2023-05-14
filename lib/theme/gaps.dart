import 'package:chatogram/theme/size.dart';
import 'package:chatogram/common/size_config.dart';
import 'package:flutter/material.dart';

///Height Widgets
SizedBox hSizedBox2 = SizedBox(
  height: SizeConfig.blockSizeVertical * AppSizes.p2,
);
SizedBox hSizedBox4 = SizedBox(
  height: SizeConfig.blockSizeVertical * AppSizes.p4,
);
SizedBox hSizedBox6 = SizedBox(
  height: SizeConfig.blockSizeVertical * AppSizes.p6,
);
SizedBox hSizedBox8 = SizedBox(
  height: SizeConfig.blockSizeVertical * AppSizes.p8,
);
SizedBox hSizedBox10 = SizedBox(
  height: SizeConfig.blockSizeVertical * AppSizes.p10,
);
SizedBox hSizedBox14 = SizedBox(
  height: SizeConfig.blockSizeVertical * AppSizes.p14,
);

/// Width Widgets
SizedBox wSizedBox2 = SizedBox(
  width: SizeConfig.blockSizeHorizontal * AppSizes.p2,
);
SizedBox wSizedBox4 = SizedBox(
  width: SizeConfig.blockSizeHorizontal * AppSizes.p4,
);
SizedBox wSizedBox6 = SizedBox(
  width: SizeConfig.blockSizeHorizontal * AppSizes.p6,
);
SizedBox wSizedBox8 = SizedBox(
  width: SizeConfig.blockSizeHorizontal * AppSizes.p8,
);
SizedBox wSizedBox10 = SizedBox(
  width: SizeConfig.blockSizeHorizontal * AppSizes.p10,
);
SizedBox wSizedBox14 = SizedBox(
  width: SizeConfig.blockSizeHorizontal * AppSizes.p14,
);

Widget addVerticalSpace(double height) => SizedBox(height: height);

Widget addHorizontalSpace(double width) => SizedBox(width: width);
