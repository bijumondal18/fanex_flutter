import 'package:fanex_flutter/widgets/custom_full_button.dart';
import 'package:fanex_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class AddCashFragment extends StatefulWidget {
  const AddCashFragment({Key? key}) : super(key: key);

  @override
  State<AddCashFragment> createState() => _AddCashFragmentState();
}

class _AddCashFragmentState extends State<AddCashFragment> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(0.85),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: AppSizes.elevation0,
        title: const Text('Add Cash'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.dimen8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Current Balance',
                    style: TextStyle(fontSize: 18, color: AppColors.orange)),
                Row(
                  children: const [
                    Icon(Icons.currency_rupee,
                        size: 18, color: AppColors.orange),
                    Text('16,076',
                        style: TextStyle(fontSize: 18, color: AppColors.orange))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSizes.dimen8),
            child: Text(
              'Add cash to your account',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            margin: EdgeInsets.all(AppSizes.dimen12),
            decoration: const BoxDecoration(color: AppColors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _CheckBoxContain(context, 'text1'),
                _CheckBoxContain(context, 'text1'),
                _CheckBoxContain(context, 'text1'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSizes.dimen8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Ammount to add',
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColors.green,
                        fontWeight: FontWeight.bold)),
                CustomTextField(
                  hintText: 'Amount',
                  obscureText: false,
                  controller: _controller,
                  icon: Icon(Icons.currency_rupee,
                      size: 18, color: AppColors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppSizes.dimen3),
                  child: Row(
                    children: [
                      Text('*Minimum deposit limit',style: TextStyle(fontSize: 12,color: Colors.red),),
                      Icon(Icons.currency_rupee,color: Colors.red,size: 12,),
                      Text('25',style: TextStyle(fontSize: 12,color: Colors.red),),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(AppSizes.dimen3),
                  child: Row(
                    children: [
                      Text('*Maximum deposit limit',style: TextStyle(fontSize: 12,color: Colors.red),),
                      Icon(Icons.currency_rupee,color: Colors.red,size: 12,),
                      Text('1,000',style: TextStyle(fontSize: 12,color: Colors.red),),
                    ],
                  ),
                ),
                CustomFullButton(title: 'ADD CASH', onPressed: (){}),
              ],
            ),
          )
        ],
      ),
    );
  }
}

bool isChecked = false;

Widget _CheckBoxContain(BuildContext context, String title) {
  return Row(
    children: [
      Checkbox(
        checkColor: Colors.green,
        value: isChecked,
        onChanged: null,
      ),
      Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      )
    ],
  );
}
