import 'package:fanex_flutter/features/create_contest/ui/create_contest_screen.dart';
import 'package:fanex_flutter/features/more/account/features/friends/ui/friends_screen.dart';
import 'package:fanex_flutter/features/more/account/features/my_profile/ui/profile_screen.dart';
import 'package:fanex_flutter/widgets/custom_reward_contest.dart';
import 'package:fanex_flutter/widgets/custom_default_appbar.dart';
import 'package:fanex_flutter/widgets/custom_rewards_container.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RewardScreen extends StatefulWidget {



  const RewardScreen({Key? key}) : super(key: key);

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: AppSizes.elevation0,
        title: Text('Rewards'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen(),
                ));
              },
              child: CustomRewardsContainer(
                  textDetails: "Verify Email Address",
                  imageUrls: "https://thumbs.dreamstime.com/b/gold-coin-flat-style-crown-symbol-game-coin-gold-crown-symbol-icon-games-reward-coins-gold-metal-gold-coin-vector-190814016.jpg"
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen(),
                ));

              },
              child: CustomRewardsContainer(
                  textDetails: "Create Profile Picture",
                  imageUrls: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdN6y6XoC5GvezYQ1EupYuo4H2vWAt7UFiqA&usqp=CAU"
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FriendsListScreen(),
                ));

              },
              child: CustomRewardsContainer(
                  textDetails: "Add Favourite Player",
                  imageUrls: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_TGqdhkOQQOIo36UlehfzB715tjXQOOZwkA&usqp=CAU"
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FriendsListScreen(),
                ));
                },
              child: CustomRewardsContainer(
                  textDetails: "Refer A Friend",
                  imageUrls: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRptgO7XS-AuN5F78IVPC84H9y95nix4xG64A&usqp=CAU"
              ),
            ),
            Container(
              margin: const EdgeInsets.all(AppSizes.dimen12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                // color: AppColors.lightGrey,
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.dimen8),
                  child: Image.asset("assets/images/fanex-logo.png",fit: BoxFit.cover,)),
            ),

            Container(
              margin: const EdgeInsets.all(AppSizes.dimen12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                // color: AppColors.lightGrey,
              ),
              height: AppSizes.dimen60,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgtFmzi-suCJkTZAmZinC2ZiIRyvw4E2V8Fg&usqp=CAU",fit: BoxFit.cover,),
                      borderRadius: BorderRadius.circular(AppSizes.dimen8),
                  ),
                  SizedBox(width: AppSizes.dimen55,),
                  Text("Share a Promotion",style: TextStyle(fontSize: AppSizes.dimen13,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            Container(
              height: AppSizes.dimen60,
              margin: const EdgeInsets.all(AppSizes.dimen12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                color: AppColors.grey.withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe_8LgbSgdtd9CV7geEhpeBJdL5RZouXCDog&usqp=CAU",fit: BoxFit.cover,height: 40,),
                  Image.network("https://img.icons8.com/fluency/344/twitter.png",fit: BoxFit.cover,),
                  Image.network("https://www.freepnglogos.com/uploads/logo-ig-png/logo-ig-instagram-windows-phone-all-you-need-know-9.png",fit: BoxFit.cover,),

                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: CustomRewardContest(
                  imageUrls: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbBRQ535XFTMxqdfD_HF9V3l4yMvMlZ1MP0A&usqp=CAU",
                  textTitle: "Create Contest"),
            )

          ],
        ),
      ),
    );
  }
}