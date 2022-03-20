import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

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
        title: const Text('More'),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountScreen()));
                  break;

                case 6:
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(
                              'Logout',
                              style: AppTheme.lightTheme.textTheme.headline4,
                            ),
                            content: Text('Are you sure you want to logout?',
                                style: AppTheme.lightTheme.textTheme.bodyText1),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Cancel',
                                    style:
                                        AppTheme.lightTheme.textTheme.headline6,
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Confirm',
                                    style:
                                        AppTheme.lightTheme.textTheme.headline6,
                                  )),
                            ],
                          ));
                  break;

                default:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MoreDetailsScreen(index: index)));
              }
            },
            child: ListTile(
              title: Text(items[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              ),
            ),
          );
        },
        itemCount: 7,
      ),
    );
  }
}
