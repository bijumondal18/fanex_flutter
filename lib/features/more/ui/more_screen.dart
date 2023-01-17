import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

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
    'My Account',
    'How to Play & FAQ',
    'Help & Contact us',
    'Rules & Scoring',
    'Terms of Use',
    'Privacy Policy',
    'Logout'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'More',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: AppColors.white),
        ),
        backgroundColor: AppColors.header,
      ),
      body: ListView.builder(
        itemCount: items.length,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.push(
                      context, CustomPageRoute(widget: const AccountScreen()));
                  break;

                case 6:
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(
                              AppStrings.logoutButtonText,
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            content: Text('Are you sure you want to logout?',
                                style: Theme.of(context).textTheme.bodyText1),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    AppStrings.cancelButtonText,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    AppStrings.confirmButtonText,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  )),
                            ],
                          ));
                  break;

                default:
                  Navigator.push(context,
                      CustomPageRoute(widget: MoreDetailsScreen(index: index)));
              }
            },
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    items[index],
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ),
                const Divider(
                  height: 0,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
