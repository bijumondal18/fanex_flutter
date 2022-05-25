import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/more/account/features/my_profile/my_profile_bloc/my_profile_bloc.dart';
import 'package:fanex_flutter/features/more/account/features/my_profile/my_profile_repo/my_profile_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common/route.dart';
import '../features/Notification/UI/notification_screen.dart';
import '../features/lobby/features/add_cash_fragment/Add cash screen.dart';
import '../features/more/account/features/my_profile/ui/profile_screen.dart';
import '../utils/app_helper.dart';

class CustomHeader extends StatefulWidget implements PreferredSizeWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.mainHeaderHeight);

  @override
  State<StatefulWidget> createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MyProfileBloc()..add(FetchProfileData()),
      child: BlocConsumer<MyProfileBloc, MyProfileState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is MyProfileFailedState) {
            AppHelper.showBasicFlash(context, state.msg);
          }
        },
        builder: (context, state) {
          if (state is MyProfileLoadedState) {
            return Container(
              color: AppColors.header,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.dimen8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CustomPageRoute(widget:  ProfileScreen()),
                        );
                      },
                      child: Container(margin: EdgeInsets.symmetric(vertical: AppSizes.dimen8),
                        width: 50,
                        height: 100.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('${state.profileResponseModel.imageURL}'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(50.0)),
                          border: Border.all(
                            color: AppColors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSizes.dimen8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            coins(state.profileResponseModel.coinsEarned
                                .toString()),
                            coins(state
                                .profileResponseModel.coinsEarnedInContest.toString()),
                            addCashButton()
                          ],
                        ),
                        const SizedBox(
                          height: AppSizes.dimen4,
                        ),
                        Row(
                          children: [
                            Text(
                              state.profileResponseModel.user?.username
                                  .toUpperCase(),
                              style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: AppSizes.headline5),
                            ),
                            const SizedBox(
                              width: AppSizes.dimen4,
                            ),
                            addCashButton()
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CustomPageRoute(widget: const NotificationScreen()),
                          );
                        },
                        icon: const Icon(
                          Icons.notification_important,
                          color: AppColors.orange,
                        ))
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

  Widget coins(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.dimen8, vertical: AppSizes.dimen4),
      decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(AppSizes.dimen30)),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/coins-icon.svg',
            width: 12,
            height: 12,
          ),
          const SizedBox(
            width: AppSizes.dimen4,
          ),
          Text(
            title,
            style:
                TextStyle(color: AppColors.white, fontSize: AppSizes.bodyText2),
          ),
        ],
      ),
    );
  }

  Widget addCashButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          CustomPageRoute(widget: const AddCashFragment()),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.dimen8, vertical: AppSizes.dimen4),
        decoration: BoxDecoration(
            color: AppColors.green.withOpacity(0.8),
            borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
        child: Row(
          children: const [
            Icon(
              Icons.add,
              color: AppColors.white,
              size: 19,
            ),
            SizedBox(
              width: AppSizes.dimen4,
            ),
            Text(
              'Add Cash',
              style: TextStyle(
                  color: AppColors.white, fontSize: AppSizes.bodyText2),
            ),
          ],
        ),
      ),
    );
  }
}
