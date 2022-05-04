import 'package:custom_switch/custom_switch.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/custom_edit_add_button.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
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
            icon: const Icon(Icons.arrow_back_ios_rounded, color: AppColors.white,size: 20,)
        ),
        actions: [
          IconButton(onPressed: () {},
              icon:  const Icon(Icons.refresh_rounded, color: AppColors.white,size: 20,))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 125,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/fanex-logo.png"),
                            radius: 40,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 125,
                          child: Transform.scale(
                            scale: 0.9,
                            child: FloatingActionButton(
                              child: Icon(Icons.camera_alt),
                                backgroundColor: AppColors.green,
                                mini: true,
                                onPressed: () {}),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8),
                      child: Text("SITABRA9", style: Theme.of(context).textTheme.bodyText1,),
                    )
                  ],
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cash won since inception", style: Theme.of(context).textTheme.bodyText1,),
                          Icon(Icons.currency_rupee, color: AppColors.orange,size: AppSizes.bodyText1,)
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Coins won since inception", style: Theme.of(context).textTheme.bodyText1,),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/coins-icon.svg',
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(width: AppSizes.dimen4,),
                              Text("0", style: TextStyle(fontSize: AppSizes.bodyText1,color: AppColors.orange),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Coins earned since inception", style: Theme.of(context).textTheme.bodyText1,),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/coins-icon.svg',
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(width: AppSizes.dimen4,),
                              Text("0", style: TextStyle(fontSize: AppSizes.bodyText1,color: AppColors.orange),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sitabra", style: Theme.of(context).textTheme.bodyText1,),
                          CustomEditAddButton(hintText: "Edit",)
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Das", style: Theme.of(context).textTheme.bodyText1,),
                          CustomEditAddButton(hintText: "Edit")
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("9933166969l", style: Theme.of(context).textTheme.bodyText1,),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Add Email", style: TextStyle(fontSize: AppSizes.bodyText1, color: AppColors.grey),),
                          CustomEditAddButton(hintText:"Add"),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Favourite Player", style: Theme.of(context).textTheme.bodyText1,),
                          InkWell(
                              onTap: () {},
                              child: Icon(Icons.arrow_forward_ios_outlined, color: AppColors.green,))
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My Referral Code", style: Theme.of(context).textTheme.bodyText1,),
                          Text("SITABRA9", style: TextStyle(fontSize: AppSizes.bodyText1,color: AppColors.orange),),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen4, horizontal: AppSizes.dimen12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Push Notifications", style: Theme.of(context).textTheme.bodyText1,),
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
                    Divider()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
