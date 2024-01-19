import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:final_project/generated/l10n.dart';
 import 'package:flutter/material.dart';
import 'package:final_project/constans/appcolor.dart';
import 'package:final_project/widgets/custom_text_field.dart';
class DateOfBirth extends StatelessWidget {
  const DateOfBirth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(color:Colors.white,
      child: Row(children: [
        Text(S.of(context).DateofBirth,
              style: TextStyle(
                  color: AppColor.greenColor, fontSize: 20)),
                  CustomFormTextField()
                  ],));
  }
}