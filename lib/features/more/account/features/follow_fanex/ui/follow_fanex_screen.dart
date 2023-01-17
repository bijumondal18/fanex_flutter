import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/more/account/features/follow_fanex/widgets/follow_card_item.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FollowFanexScreen extends StatelessWidget {
  const FollowFanexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Follow Fanex'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: AppSizes.kDefaultPadding,
            ),
            FollowCardItem(
              title: 'Follow us on Facebook',
              icon: const FaIcon(
                FontAwesomeIcons.facebook,
                color: AppColors.facebook,
              ),
              onPressed: () {
                if (kDebugMode) {
                  print('facebook share button pressed');
                }
              },
              cardBgColor: AppColors.facebook,
            ),
            FollowCardItem(
              title: 'Follow us on Instagram',
              icon: const FaIcon(
                FontAwesomeIcons.instagram,
                color: AppColors.instagram,
              ),
              onPressed: () {
                if (kDebugMode) {
                  print('Instagram share button pressed');
                }
              },
              cardBgColor: AppColors.instagram,
            ),
            FollowCardItem(
              title: 'Follow us on Twitter',
              icon: const FaIcon(
                FontAwesomeIcons.twitter,
                color: AppColors.twitter,
              ),
              onPressed: () {
                if (kDebugMode) {
                  print('Twitter share button pressed');
                }
              },
              cardBgColor: AppColors.twitter,
            ),
            FollowCardItem(
              title: 'Follow us on Youtube',
              icon: const FaIcon(
                FontAwesomeIcons.youtube,
                color: AppColors.youtube,
              ),
              onPressed: () {
                if (kDebugMode) {
                  print('Youtube share button pressed');
                }
              },
              cardBgColor: AppColors.youtube,
            ),
          ],
        ),
      ),
    );
  }
}
