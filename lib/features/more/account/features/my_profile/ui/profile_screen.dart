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
import '../../../../../../utils/shared_preferences.dart';
import '../../favourite_player/ui/favourite_player_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}


class _ProfileScreenState extends State<ProfileScreen> {
  MyProfileBloc myProfileBloc = MyProfileBloc();
  bool isSwitched = false;
  String id = '';

  void getID() async {
    FanxPreferance pref = FanxPreferance();
    await pref.getUserId().then((value) => id = value);
  }

  void initState() {
    print('id:   ' + id);
    getID();
    myProfileBloc.add(FetchProfileData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('id:  8  ' + id);
    return BlocProvider(
      create: (context) => myProfileBloc,
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
            print('id:  ' + id);
            List<String> title = [
              AppStrings.cashWonText,
              AppStrings.coinsEarnedText,
              AppStrings.coinsEarnedText,
              state.profileResponseModel.user?.firstName +
                  ' ' +
                  state.profileResponseModel.user?.lastName,
              AppStrings.addEmailText,
              AppStrings.mobileNumberHint,
              'My Referral Code',
              AppStrings.favouritePlayerText,
              AppStrings.pushNotificationsText,
            ];
            return NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overScroll) {
                overScroll.disallowIndicator();
                return false;
              },
              child: Scaffold(
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
                        onPressed: () {
                          BlocProvider.of<MyProfileBloc>(context)
                              .add(FetchProfileData());
                        },
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
                            _buildProfileImage(state),
                            _buildProfileName(state)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: AppSizes.dimen24),
                        child: const Divider(
                          height: 0,
                        ),
                      ),
                      ListView.separated(
                          padding: EdgeInsets.zero,
                          itemCount: 9,
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomListTiles(
                              state: state,
                              index: index,
                              title: title[index],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider(
                              height: 0,
                            );
                          })
                    ],
                  ),
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
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: AppSizes.dimen30),
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: DecorationImage(
                  image: NetworkImage('${state.profileResponseModel.imageURL}'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                border: Border.all(
                  color: AppColors.grey,
                  width: 1.0,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 130,
              top: 90,
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
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}

class CustomListTiles extends StatelessWidget {
  MyProfileLoadedState state;
  String? title;
  int index;

  CustomListTiles({
    Key? key,
    required this.state,
    this.title,
    required this.index,
  }) : super(key: key);
  var isSwitched = false;

  GetIndex(context) {
    if (index == 0) {
      return Container(
        width: MediaQuery.of(context).size.width * 0.1,
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
          width: MediaQuery.of(context).size.width * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/coins-icon.svg',
                width: 12,
                height: 12,
              ),
              Text(
                index == 2
                    ? state.profileResponseModel.coinsEarned.toString()
                    : state.profileResponseModel.coinsEarnedInContest
                        .toString(),
                style: TextStyle(
                    fontSize: AppSizes.bodyText1, color: AppColors.orange),
              )
            ],
          ));
    } else if (index == 3 || index == 4) {
      return const CustomEditAddButton(
        hintText: "Edit",
      );
    } else if (index == 5 || index == 6) {
      return Text(index == 5
          ? '${state.profileResponseModel.phone.toString()}'
          : '${state.profileResponseModel.user?.username.toString()}');
    } else if (index == 7) {
      return const Icon(
        Icons.arrow_forward_ios_outlined,
        color: AppColors.grey,
      );
    } else {
      return Transform.scale(
        scale: 0.8,
        child: CustomSwitch(
          onChanged: onChange(),
          value: isSwitched,
          activeColor: AppColors.green,
        ),
      );
    }
  }

  onChange() {
    isSwitched != isSwitched;
  }

  onTap(context) {
    if (index == 7) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => FavouritePlayerScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap(context);
      },
      title: Text("${title}"),
      trailing: GetIndex(context),
    );
  }
}
