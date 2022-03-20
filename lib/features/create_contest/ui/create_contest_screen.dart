import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/common/strings.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// ----------create contest screen-------------------- ///

class CreateContestScreen extends StatefulWidget {
  const CreateContestScreen({Key? key}) : super(key: key);

  @override
  State<CreateContestScreen> createState() => _CreateContestScreenState();
}

class _CreateContestScreenState extends State<CreateContestScreen> {
  TextEditingController contestTitleController = TextEditingController();
  TextEditingController cashOrCoinsController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController writeMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Appbar
      appBar: AppBar(
        title: const Text('Create Contest'),
      ),

      ///Content
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.dimen12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Contest Title',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomTextField(
                hintText: 'Enter Contest Title',
                obscureText: false,
                controller: contestTitleController,
                icon: const Icon(Icons.message),
              ),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Select Category',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomSpinner(),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Select Match',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomSpinner(),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Select Statistical Category',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomSpinner(),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Add Entry Fee',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: CustomTextField(
                      hintText: 'Cash or Coins',
                      obscureText: false,
                      controller: cashOrCoinsController,
                      icon: const Icon(Icons.message),
                    ),
                  ),
                  const SizedBox(width: AppSizes.dimen12),
                  Flexible(
                      child: CustomTextField(
                    hintText: 'Amount',
                    obscureText: false,
                    controller: amountController,
                    icon: const Icon(Icons.message),
                  )),
                ],
              ),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Message',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomTextField(
                hintText: 'Write Message',
                obscureText: false,
                controller: writeMessageController,
                icon: const Icon(Icons.message),
              ),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              //const CustomTextField(hintText: 'Invite Friends',obscureText: false,),
              const SizedBox(
                height: AppSizes.dimen16,
              ),
              CustomFullButton(
                  title: AppStrings.finishButtonText, onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
