import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/more/account/features/follow_fanex/widgets/follow_card_item.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FollowFanexScreen extends StatelessWidget {
  const FollowFanexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomDefaultAppBar(title: 'Follow Fanex'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: AppSizes.dimen16,
            ),
            FollowCardItem(
                title: 'Follow us on Facebook',
                icon: const Icon(Icons.facebook),
                onpressed: () {
                  if (kDebugMode) {
                    print('facebook share button pressed');
                  }
                }),
            FollowCardItem(
                title: 'Follow us on Instagram',
                icon: const Icon(Icons.indeterminate_check_box_rounded),
                onpressed: () {}),
            FollowCardItem(
                title: 'Follow us on Twitter',
                icon: const Icon(Icons.transfer_within_a_station),
                onpressed: () {}),
            FollowCardItem(
                title: 'Follow us on Youtube',
                icon: const Icon(Icons.youtube_searched_for),
                onpressed: () {}),
          ],
        ),
      ),
    );
  }
}
