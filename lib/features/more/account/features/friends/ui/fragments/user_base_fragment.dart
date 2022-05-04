import 'package:fanex_flutter/features/more/account/features/friends/Common/Common.dart';
import 'package:fanex_flutter/features/more/account/features/friends/Models/models.dart';
import 'package:flutter/material.dart';

import '../../../../../../../common/common.dart';

class UserBaseScreen extends StatefulWidget {
  const UserBaseScreen({Key? key}) : super(key: key);

  @override
  State<UserBaseScreen> createState() => _UserBaseScreenState();
}

class _UserBaseScreenState extends State<UserBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [SearchBar(onPressed: () {}), _buildList(context)],
        ),
      ),
    );
  }
}

Widget _buildList(BuildContext context) {
  return NotificationListener<OverscrollIndicatorNotification>(
    onNotification: (overScroll) {
      overScroll.disallowIndicator();
      return false;
    },
    child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: friendsName.length,
        itemBuilder: (BuildContext context, int index) {
          return _cardItem(context, index);
        }),
  );
}

Widget _cardItem(
  BuildContext context,
  int index,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
      color: AppColors.grey.withOpacity(0.1),
    ),
    margin: const EdgeInsets.symmetric(
        horizontal: AppSizes.dimen12, vertical: AppSizes.dimen8),
    padding: const EdgeInsets.all(AppSizes.dimen8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          friendsName[index],
          style: TextStyle(
              fontSize: AppSizes.headline5,
              color: AppColors.black.withOpacity(0.7),
              fontWeight: FontWeight.bold),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonBlockButton(
              title: 'Send Request',
              buttonRadius: 6,
              buttonHeight: AppSizes.smallbuttonHeight,
              buttonWidth: MediaQuery.of(context).size.width * 0.35,
              buttonOnPressed: () {},
              buttonColor: AppColors.green.withOpacity(0.8),
            ),
            SizedBox(
              height: AppSizes.dimen4,
            ),
            CommonBlockButton(
                title: 'Block',
                buttonRadius: 6,
                buttonHeight: 20,
                buttonWidth: MediaQuery.of(context).size.width * 0.35,
                buttonOnPressed: () {},
                buttonColor: AppColors.green.withOpacity(0.8))
          ],
        )
      ],
    ),
  );
}
