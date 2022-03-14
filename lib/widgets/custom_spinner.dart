import 'package:flutter/material.dart';

import '../common/common.dart';

class CustomSpinner extends StatelessWidget {
  CustomSpinner({Key? key}) : super(key: key);

  String initialValue = 'Select a Category';

  var itemList = ['Select a Category', 'T-20', 'Test Match', 'One Day Innings'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.only(top: AppSizes.dimen8),
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen8),
      width: MediaQuery.of(context).size.width,
      height: AppSizes.textFieldHeight,
      decoration: BoxDecoration(
        color: AppColors.textFieldBg,
        borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
            value: initialValue,
            items: itemList.map((String items) {
              return DropdownMenuItem(value: items, child: Text(items));
            }).toList(),
            onChanged: (value) {}),
      ),
    );
  }
}
