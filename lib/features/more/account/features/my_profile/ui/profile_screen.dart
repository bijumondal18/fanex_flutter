import 'package:custom_switch/custom_switch.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/custom_edit_add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
          },
            icon: const Icon(
              Icons.clear,
              color: AppColors.white,
              size: 20,
            )),
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(
                Icons.refresh_rounded,
                color: AppColors.white,
                size: 20,
              )),
        ],
        title: Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/images/fanex-logo.png"),
                          radius: 40,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 125,
                          child: Transform.scale(
                            scale: 0.9,
                            child: FloatingActionButton(
                                elevation: 0,
                                child: const Icon(Icons.camera_alt),
                                backgroundColor: AppColors.green,
                                mini: true,
                                onPressed: () {}),
                          ),
                        ),
                      ],
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8),
                    child: Text(AppStrings.firstNameHint, style: Theme.of(context).textTheme.bodyText1,),
                  )
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.cashWonText, style: Theme.of(context).textTheme.bodyText1,),
                        Row(
                          children:  [
                            Icon(Icons.currency_rupee, color: AppColors.orange,size: AppSizes.bodyText1,),
                            Text(
                              AppStrings.cashWon,
                              style: TextStyle(
                                  fontSize: AppSizes.bodyText1,
                                  color: AppColors.orange),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.coinsWonText, style: Theme.of(context).textTheme.bodyText1,),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/coins-icon.svg',
                              width: 12,
                              height: 12,
                            ),
                            const SizedBox(width: AppSizes.dimen4,),
                             Text(AppStrings.coinsWon, style: TextStyle(fontSize: AppSizes.bodyText1,color: AppColors.orange),)
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.coinsEarnedText, style: Theme.of(context).textTheme.bodyText1,),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/coins-icon.svg',
                              width: 12,
                              height: 12,
                            ),
                            const SizedBox(width: AppSizes.dimen4,),
                             Text(AppStrings.coinsEarned, style: TextStyle(fontSize: AppSizes.bodyText1,color: AppColors.orange),)
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.firstNameHint, style: Theme.of(context).textTheme.bodyText1,),
                        const CustomEditAddButton(hintText: "Edit",)
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.lastNameHint, style: Theme.of(context).textTheme.bodyText1,),
                        const CustomEditAddButton(hintText: "Edit")
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.mobileNumberHint, style: Theme.of(context).textTheme.bodyText1,),
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(AppStrings.addEmailText, style: TextStyle(fontSize: AppSizes.bodyText1, color: AppColors.grey),),
                        CustomEditAddButton(hintText:"Add"),
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.favouritePlayerText, style: Theme.of(context).textTheme.bodyText1,),
                        InkWell(
                            onTap: () {},
                            child: const Icon(Icons.arrow_forward_ios_outlined, color: AppColors.grey,))
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.referralCodeHint, style: Theme.of(context).textTheme.bodyText1,),
                         Text(AppStrings.referralCodeHint, style: TextStyle(fontSize: AppSizes.bodyText1,color: AppColors.orange),),
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen4, horizontal: AppSizes.dimen12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.pushNotificationsText, style: Theme.of(context).textTheme.bodyText1,),
                        Transform.scale(
                          scale: 0.8,
                          child: CustomSwitch(
                            value: isSwitched,
                            activeColor: AppColors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
