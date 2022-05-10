import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/Custom_sort_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LobbyFragment extends StatefulWidget {
  const LobbyFragment({Key? key}) : super(key: key);

  @override
  State<LobbyFragment> createState() => _LobbyFragmentState();
}

class _LobbyFragmentState extends State<LobbyFragment> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return _cardItem(context);
        });
  }
}

Widget _cardItem(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.dimen8, vertical: AppSizes.dimen4),
    child: Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(
                1.0,
                1.0,
              ),
              color: AppColors.lightGrey.withOpacity(0.6),
              spreadRadius: 2,
              blurRadius: 20,
            )
          ],
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'FANEX CONTEST',
                  style: TextStyle(
                      fontSize: AppSizes.headline6, color: AppColors.orange),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'ENTRIES (5/25)',
                  style: TextStyle(
                      fontSize: AppSizes.headline6,
                      color: AppColors.green.withOpacity(0.7)),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LSG vs GT 🚀',
                      style: TextStyle(fontSize: 15, color: AppColors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          'Participants:',
                          style:
                              TextStyle(fontSize: 12, color: AppColors.black),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '🚩 vs 🚩',
                          style:
                              TextStyle(fontSize: 12, color: AppColors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Stat:',
                          style:
                              TextStyle(fontSize: 12, color: AppColors.black),
                        ),
                        Text(
                          'Bt.NotOut|Bw Runs|R Out',
                          style:
                              TextStyle(fontSize: 12, color: AppColors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'CONTEST START',
                      style: TextStyle(fontSize: 15, color: AppColors.black),
                    ),
                    Text(
                      '1 DAY LEFT',
                      style: TextStyle(fontSize: 12, color: AppColors.black),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TOTAL PRIZE',
                      style: TextStyle(fontSize: 15, color: AppColors.black),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/coins-icon.svg',
                          width: 12,
                          height: 12,
                        ),
                        Text(
                          '75',
                          style:
                              TextStyle(fontSize: 15, color: AppColors.orange),
                        ),
                      ],
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.info,
                      color: AppColors.green.withOpacity(0.8),
                    )),
                Column(
                  children: [
                    CommonBlockButton(
                        title: '💰 50',
                        buttonRadius: 8,
                        buttonHeight: 30,
                        buttonWidth: MediaQuery.of(context).size.width * 0.2,
                        buttonOnPressed: () {},
                        buttonColor: AppColors.green.withOpacity(0.8),
                        titleColor: AppColors.white),
                    Text(
                      'ENTRY FEE',
                      style: TextStyle(fontSize: 12, color: AppColors.black),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
