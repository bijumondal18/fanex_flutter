import 'package:custom_switch/custom_switch.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/more/account/features/my_profile/my_profile_bloc/my_profile_bloc.dart';
import 'package:fanex_flutter/features/more/account/features/my_profile/my_profile_repo/my_profile_repo.dart';
import 'package:fanex_flutter/utils/app_helper.dart';
import 'package:fanex_flutter/widgets/custom_circleindicator.dart';
import 'package:fanex_flutter/widgets/custom_edit_add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocProvider(
      create: (context) =>
      MyProfileBloc(MyProfileRepo())
        ..add(FetchProfileData('447')),
      child: BlocConsumer<MyProfileBloc, MyProfileState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is MyProfileFailedState) {
            AppHelper.showBasicFlash(context, state.msg);
          }
        },
        builder: (context, state) {
          if (state is MyProfileLoadingState) {
            return CustomCircleIndicator();
          } else if (state is MyProfileLoadedState) {
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: AppColors.white,
                      size: 20,
                    )),
                actions: [
                  IconButton(
                      onPressed: () {},
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
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildProfileImage(state),
                          _buildProfileName(state)
                        ],
                      ),
                    ),
                    ListView.separated(
                        itemCount: 9,
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return CustomListTiles(
                            state: state,
                            index: index,
                            title: title[index],
                            isSwitched: false,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider();
                        })
                  ],
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _buildProfileImage(MyProfileLoadedState state) {
    return Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: 90,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              backgroundImage:
              NetworkImage('${state.profileResponseModel.imageURL}'),
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
        ));
  }

  Widget _buildProfileName(MyProfileLoadedState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8),
      child: Text(
        state.profileResponseModel.user?.firstName +
            ' ' +
            state.profileResponseModel.user?.lastName,
        style: Theme
            .of(context)
            .textTheme
            .bodyText1,
      ),
    );
  }

  Widget _buildCashSection(String title, String header, bool isCash) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: AppSizes.dimen12, horizontal: AppSizes.dimen12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  header,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText1,
                ),
                Row(
                  children: [
                    isCash
                        ? Icon(
                      Icons.currency_rupee,
                      color: AppColors.orange,
                      size: AppSizes.bodyText1,
                    )
                        : SvgPicture.asset(
                      'assets/icons/coins-icon.svg',
                      width: 12,
                      height: 12,
                    ),
                    Text(
                      title,
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
    );
  }

  Widget _buildNameBarWithEditButton(String title) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: AppSizes.dimen8, horizontal: AppSizes.dimen12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText1,
                ),
                const CustomEditAddButton(
                  hintText: "Edit",
                )
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}

class CustomListTiles extends StatelessWidget {
  MyProfileLoadedState state;
  String? title;
  String? trailingText;
  int index;
  bool? isSwitched;

  CustomListTiles({Key? key,
    required this.state,
    this.title,
    this.trailingText,
    required this.index,
    this.isSwitched})
      : super(key: key);

  GetIndex(context) {
    if (index == 0) {
      return Container(
        width: MediaQuery
            .of(context)
            .size
            .width * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.currency_rupee,
              color: AppColors.orange,
              size: AppSizes.bodyText1,
            ),
            Text(
              state.profileResponseModel.cashEarnedInContest.toString(),
              style: TextStyle(
                  fontSize: AppSizes.bodyText1, color: AppColors.orange),
            )
          ],
        ),
      );
    } else if (index == 1 || index == 2) {
      return Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/coins-icon.svg',
                width: 12,
                height: 12,
              ),
              Text(
                index == 2 ? state.profileResponseModel.coinsEarned
                    .toString() : state.profileResponseModel.coinsEarnedInContest
                    .toString(),
                style: TextStyle(
                    fontSize: AppSizes.bodyText1, color: AppColors.orange),
              )
            ],
          )
      );
    } else if (index == 3 || index == 4) {
      return const CustomEditAddButton(
        hintText: "Edit",
      );
    } else if (index == 5 || index == 6) {
      return Text('${trailingText}');
    } else if (index == 7) {
      return InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.grey,
          ));
    } else {
      return Transform.scale(
        scale: 0.8,
        child: CustomSwitch(
          value: isSwitched,
          activeColor: AppColors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${title}'),
      trailing: GetIndex(context),
    );
  }
}
List<String> title =[
  AppStrings.cashWonText,
  AppStrings.coinsEarnedText,
  AppStrings.coinsEarnedText,
  AppStrings.cashWonText,
  AppStrings.addEmailText,
  AppStrings.mobileNumberHint,
  'My Referral Code',
  AppStrings.favouritePlayerText,
  AppStrings.pushNotificationsText,
];