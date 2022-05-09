import 'package:fanex_flutter/widgets/Custom_sort_button.dart';
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
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: AppSizes.elevation0,
        title: const Text('Add Cash'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen12),
          child: Column(
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
                            style:
                                TextStyle(fontSize: 18, color: AppColors.orange))
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
              _checkBoxContainers(context),
              Padding(
                padding: const EdgeInsets.all(AppSizes.dimen8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Amount to add',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.green,
                            fontWeight: FontWeight.bold)),
                    CustomTextField1(
                      hintText: '100',
                      controller: _controller,
                      icon: const Icon(Icons.currency_rupee,
                          size: 18, color: AppColors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.dimen3),
                      child: Row(
                        children: const [
                          Text(
                            '*Minimum deposit limit',
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.red,
                            size: 12,
                          ),
                          Text(
                            '25',
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.dimen3),
                      child: Row(
                        children: const [
                          Text(
                            '*Maximum deposit limit',
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.red,
                            size: 12,
                          ),
                          Text(
                            '1,000',
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    MoneyButton(controller: _controller,),
                    CustomFullButton(title: 'ADD CASH', onPressed: () {}),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      margin:
                          const EdgeInsets.symmetric(vertical: AppSizes.dimen12),
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            color: AppColors.lightGrey.withOpacity(0.6),
                            spreadRadius: 2,
                            blurRadius: 20,
                          )],
                          color: AppColors.white,
                          border: Border.all(color: AppColors.orange),
                          borderRadius:
                              BorderRadius.circular(AppSizes.cardCornerRadius)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'All deposits must be wagered before requesting a withdrawal',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




class CustomCheckBox extends StatefulWidget {
  final String title;
  const CustomCheckBox({Key? key, required this.title}) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
      };
      return AppColors.green;
    }
    return Row(
      children: [
        Checkbox(
      checkColor: AppColors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
        ),
        Text(
          widget.title,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}


Widget _checkBoxContainers(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(AppSizes.dimen8),
    decoration: BoxDecoration(
      boxShadow: [BoxShadow(
        offset: const Offset(
          1.0,
          1.0,
        ),
        color: AppColors.lightGrey.withOpacity(0.6),
        spreadRadius: 2,
        blurRadius: 20,
      )],
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        CustomCheckBox(title: 'text1'),
        CustomCheckBox(title:  'text1'),
        CustomCheckBox(title:  'text1'),
      ],
    ),
  );
}
class MoneyButton extends StatefulWidget {
  final TextEditingController controller;
  const MoneyButton({Key? key,required this.controller}) : super(key: key);

  @override
  State<MoneyButton> createState() => _MoneyButtonState();
}

class _MoneyButtonState extends State<MoneyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  offset: const Offset(
                    1.0,
                    1.0,
                  ),
                  color: AppColors.lightGrey.withOpacity(0.6),
                  spreadRadius: 2,
                  blurRadius: 20,
                )],
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
            child: CommonBlockButton(
                titleColor: AppColors.black,
                title: '₹100',
                buttonRadius: AppSizes.cardCornerRadius,
                buttonHeight: AppSizes.buttonHeight,
                buttonWidth: MediaQuery.of(context).size.width * 0.28,
                buttonOnPressed: (){
                  setState(() {
                    widget.controller.text='100';
                  });
                },
                buttonColor: AppColors.white),
          ),
          //const SizedBox(width: AppSizes.dimen12,),
          Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  offset: const Offset(
                    1.0,
                    1.0,
                  ),
                  color: AppColors.lightGrey.withOpacity(0.6),
                  spreadRadius: 2,
                  blurRadius: 20,
                )],
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
            child: CommonBlockButton(
                titleColor: AppColors.black,
                title: '₹200',
                buttonRadius: AppSizes.cardCornerRadius,
                buttonHeight: AppSizes.buttonHeight,
                buttonWidth: MediaQuery.of(context).size.width * 0.28,
                buttonOnPressed: (){
                  setState(() {
                    widget.controller.text='200';
                  });
                },
                buttonColor: AppColors.white),
          ),
          //const SizedBox(width: AppSizes.dimen12,),
          Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  offset: const Offset(
                    1.0,
                    1.0,
                  ),
                  color: AppColors.lightGrey.withOpacity(0.6),
                  spreadRadius: 2,
                  blurRadius: 20,
                )],
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
            child: CommonBlockButton(
                titleColor: AppColors.black,
                title: '₹500',
                buttonRadius: AppSizes.cardCornerRadius,
                buttonHeight: AppSizes.buttonHeight,
                buttonWidth: MediaQuery.of(context).size.width * 0.28,
                buttonOnPressed:(){
                  setState(() {
                    widget.controller.text='500';
                  });
                },
                buttonColor: AppColors.white),
          ),
        ],
      ),
    );
  }
}
