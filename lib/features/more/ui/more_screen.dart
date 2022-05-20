import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/utils/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/route.dart';
import '../account/ui/account_screen.dart';
import '../more_details/ui/more_details_screen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  final List<String> items = [
    'Account',
    'How to play/FAQ',
    'Help/Contact us',
    'Rules & Scoring',
    'Terms of use',
    'Privacy policy',
    'Logout'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'More',
          style:
              TextStyle(color: AppColors.white, fontSize: AppSizes.headline5),
        ),
        backgroundColor: AppColors.header,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: const EdgeInsets.only(top: AppSizes.dimen8),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(context,
                            CustomPageRoute(widget: const AccountScreen()));
                        break;

                      case 6:
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text(
                                    AppStrings.logoutButtonText,
                                    style: Theme.of(context).textTheme.headline4,
                                  ),
                                  content: Text(
                                      'Are you sure you want to logout?',
                                      style:
                                          Theme.of(context).textTheme.bodyText1),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          AppStrings.cancelButtonText,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        )),
                                    TextButton(
                                        onPressed: () async{
                                          SharedPreferences pref =await SharedPreferences.getInstance();
                                          pref.remove('isLogin');
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          AppStrings.confirmButtonText,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        )),
                                  ],
                                ));
                        break;

                      default:
                        Navigator.push(
                            context,
                            CustomPageRoute(
                                widget: MoreDetailsScreen(index: index)));
                    }
                  },
                  child: Column(
                    children: [
                      ListTile(
                        visualDensity:
                            const VisualDensity(horizontal: 0, vertical: -4),
                        title: Text(items[index], style: Theme.of(context).textTheme.bodyText1,),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ),
                      const Divider()
                    ],
                  ),
                );
              },
              itemCount: 7,
            ),
          );
        },
      ),
    );
  }
}
